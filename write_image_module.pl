use strict;
use warnings;
use LWP::UserAgent;
use HTML::TreeBuilder;

my $template = 'https://hub.docker.com/search/?isAutomated=0&isOfficial=0&page=500&pullCount=1&q=%2A&starCount=0';


sub getImageRank($) {
	my ($page) = @_ ;
	my $url = $template;
	$url =~ s/500/$page/;
	my $ua = LWP::UserAgent->new( ssl_opts => { verify_hostname => 0 }, );
	my $req = HTTP::Request->new(GET => $url);
	my $res = $ua->request($req);
	if (!$res->is_success) {
		# request again
		$res = $ua->request($req);
		if (!$res->is_success) {
			print "Failed: ", $res->status_line, "\n";
			exit 1
		}
	}
	my $tree = HTML::TreeBuilder->new;
	$tree->parse($res->as_string);

	my @elements = $tree->look_down( '_tag' , 'a' );
	my @results = ();
	foreach my $ele (@elements) {
		my $name = "";
		my $stars = "";
		my $pulls = "";
		my $link = "";
		if ($ele->as_HTML =~ /href=\"([0-9a-zA-Z\/\._-]+)\"\>/) {
			$link = "https://hub.docker.com".$1
		}
		my @divs = $ele->look_down( '_tag' , 'div' );
		next if @divs == 0 ;
		foreach my $div (@divs) {
			#print $div->as_text , "\n";
			my $text = $div->as_text;
			if ($text =~ /^([0-9\.]+[K|M]?)STARS/g) {
				$stars = $1 if length($stars) == 0;
				next;
			}
			if ($text =~ /^([0-9\.]+[K|M]?\+?)PULLS/g) {
				$pulls = $1 if length($pulls) == 0;
				next;
			}
			$text =~ s/(.*)public$/$1/g;
			$text =~ s/(.*)official$/$1/g;
			if ($text =~ /^((?:[0-9a-z._-]{2,})|(?:[0-9a-z]{4,}\/[0-9a-z._-]+))$/) {
				$name = $1 if length($name) == 0;
				next;
			}
		}
		push @results, {name=>$name, stars=>$stars, pulls=>$pulls, link=>$link};
	}

	$tree->delete;
	return (@results);
}

sub getImageRunInfo($$) {
	my ($image, $link) = @_ ;
	my $ua = LWP::UserAgent->new( ssl_opts => { verify_hostname => 0 }, );
	my $req = HTTP::Request->new(GET => $link);
	my $res = $ua->request($req);
	if (!$res->is_success) {
		print "Failed: ", $res->status_line, "\n";
		exit 1
	}
	my $tree = HTML::TreeBuilder->new;
	$tree->parse($res->as_string);

	my @elements = $tree->look_down( '_tag' , 'code' );
	my @results = ();
	foreach my $ele (@elements) {
		if ($ele->as_text =~ /^\$?\s+(docker run.+)$/) {
			my $res = $1;
			$res =~ s/-(ti|it)/-d/;
			$res =~ s/--rm//;
			$res =~ s/(?:--volume|-v)\s+[^:]+\:([^:]+)(?:\:[a-z]+)?/-v $1/g;
			$res =~ s/\s+-P\s+/  /g;
			$res =~ s/-p [0-9]+\:[0-9]+//g;
			push @results, $res;
		}
	}

	$tree->delete;
	if (@results == 0) {
		push @results, "docker run -d ".$image;
	}
	return (@results);
}

sub getObject($) {
	my $image = shift;
	$image =~ s/(.*)\.pm$/$1/;
	(my $obj = $image) =~ s|/|::|g;
	return $obj;
}


sub writeImageModule($$$) {
	my ($name, $url, $rank) = @_;
	my @runs = getImageRunInfo($name, $url);
	(my $name_regex = $name) =~ s/\//\\\//g;
	my $runCmd = "";
	$runCmd = $runs[0] if (@runs > 0 && $runs[0] =~ /$name_regex/);
	(my $n = $name) =~ s/-/_/g;
	my $file = "images/".$n.".pm";
	# will not re-write the exist file
	next if (-e $file);
	my $obj = getObject($file);
	(my $dir = $file) =~ s/(.*)\/[^\/]+\.pm$/$1/;
	print "file is $file, dir is $dir\n";
	mkdir $dir;
	open OUT, ">$file" or die $!;
	print OUT <<__EOF__;
#! /usr/bin/perl
package $obj;

use strict;
use warnings;

sub name() {
	return "$name";
}

sub rank() {
	return $rank;
}

sub link() {
}

sub run() {
	return "$runCmd";
}

1;


__EOF__
	close OUT;
}

if (@ARGV != 2) {
	print "please specific the start and stop number\n";
	exit(1);
}
my $start = $ARGV[0];
if ($start < 1) {
	print "start number can not be smaller than 1\n";
	exit(1);
}
my $stop = $ARGV[1];
if ($start > $stop) {
	print "start number can not be bigger than stop number\n";
	exit(1);
}
my $page = int($stop/10)+1;
for (my $i = int($start/10)+1; $i <= $page; $i ++) {
	print "process page# ".$i."\n";
	my @res = getImageRank($i);
	for(my $j = 0; $j < @res; $j ++) {
		my $r = $res[$j];
		my $num =($i-1)*10+$j+1 ;
		next if ($num < $start);
		last if ($num > $stop);
		print "process ".$r->{name},", link is ".$r->{link}."\n";
		writeImageModule($r->{name}, $r->{link}, $num);
	}
}

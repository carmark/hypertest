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

sub getImageRunInfo($) {
	my ($link) = @_ ;
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
			push @results, $1;
		}
	}

	$tree->delete;
	return (@results);
}

for (my $i = 1; $i <= 500; $i ++) {
	my @res = getImageRank($i);
	for(my $j = 0; $j < @res; $j ++) {
		my $r = $res[$j];
		my $num =($i-1)*10+$j+1 ;
		printf "%-10s%-50s%-20s%-20s%-20s\n", $num, $r->{name}, $r->{stars},$r->{pulls}, $r->{link};
	}
}



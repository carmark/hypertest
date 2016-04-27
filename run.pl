#! /usr/bin/perl
use strict;
use warnings;

my $binary = "docker";

sub getImages() {
	my $path = "images"; 
	my @files = ();
	foreach (`find $path`) {
		if (/.*\.pm$/) {
			chomp;
			push @files, $_;
		}
	}
	return (@files)
}

sub getObject($) {
	my $image = shift;
	$image =~ s/(.*)\.pm$/$1/;
	(my $obj = $image) =~ s|/|::|g;
	return $obj;
}

sub processDockerRun($) {
	my $command = shift;
	$command =~ s/-(ti|it)/-d/g;
	$command =~ s/^docker/$binary/g;
	return $command;
}

sub getExitCode($) {
	my $id = shift;
	my $code = 0;
	print "sleep 10s to get exit code\n";
	for (my $i =0; $i <10; $i ++) {
		sleep(1);
		print ". ";
		$| = 1;
	}
	my @output = `$binary inspect $id`;
	foreach my $line (@output) {
		if ($line =~ /\"ExitCode\"\: ([0-9]+)/) {
			$code = $1;
			last;
		}
	}
	return $code;
}

sub runImage($) {
	my $image = shift;
	my $id = "";
	my $link_id = "";
	my $code = 0;
	require $image;
	my $obj = getObject($image);
	print "Run the image: ".$obj->name(),", rank is ".$obj->rank()."\n";
	my $link = $obj->link();
	if (defined $link && length($link) != 0) {
		$link = processDockerRun($link);
		$link_id = `$link`;
		$code = $?;
		chomp($link_id);
		if ($code == 0 && $link_id =~ /[0-9a-z]+/) {
			$code = getExitCode($link_id);
			if ($code != 0 ) {
				return ($link_id, $id, $code);
			}
		} else {
			return ($link_id, $id, $code);
		}
	}
	my $cmd = $obj->run();
	if (length($cmd) != 0) {
		$cmd = processDockerRun($cmd);
		$id = `$cmd`;
		$code = $?;
		chomp($id);
		if ($code == 0 && $id =~ /[0-9a-z]+/) {
			$code = getExitCode($id);
			if ($code != 0 ) {
				return ($link_id, $id, $code);
			}
		} else {
			return ($link_id, $id, $code);
		}
	}
	return ($link_id, $id, $code);
}

sub removeContainer($) {
	my $id = shift;
	`$binary rm -f -v $id `;
}

sub removeImage($) {
	my $image = shift;
	`$binary rmi $image`;
}

my $type = $ARGV[0];
if (not defined $type || (defined $type && $type ne "docker" && $type ne "hyper")) {
	$type = "docker";
}
if ($type eq "hyper") {
	$binary = "hyper";
	if (defined $ENV{hyper_host}) {
		$binary = $binary." -H ".$ENV{hyper_host};
	}
}
my @files = getImages();
open RESULT, ">/tmp/test-result.txt" or die $!;
foreach (@files) {
	my $file = $_;
	my ($lid, $id, $code) = runImage($file);
	if ($code != 0) {
		print "Error existed(".$code.") to run docker image ".$_."\n";
	}
	print "\n";
	if ($id =~ /[0-9a-z]+/) {
		removeContainer($id);
	}
	if ($lid =~ /[0-9a-z]+/) {
		removeContainer($lid);
	}
	require $_;
	my $obj = getObject($file);
	if (length($obj->name()) != 0) {
		removeImage($obj->name())
	}
	print RESULT $obj->rank()."\t".$obj->name()."\t".$id."\t".$code."\t".$obj->run()."\n";
}
close RESULT;

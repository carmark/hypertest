#! /usr/bin/perl
package images::benbrown::git_mirror;

use strict;
use warnings;

sub name() {
	return "benbrown/git-mirror";
}

sub rank() {
	return 79;
}

sub link() {
}

sub run() {
	return "docker run -d benbrown/git-mirror";
}

1;



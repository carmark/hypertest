#! /usr/bin/perl
package images::alpine;

use strict;
use warnings;

sub name() {
	return "alpine";
}

sub rank() {
	return 71;
}

sub link() {
}

sub run() {
	return "docker run -d alpine ls";
}

1;



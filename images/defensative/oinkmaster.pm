#! /usr/bin/perl
package images::defensative::oinkmaster;

use strict;
use warnings;

sub name() {
	return "defensative/oinkmaster";
}

sub rank() {
	return 179;
}

sub link() {
}

sub run() {
	return "docker run -d defensative/oinkmaster";
}

1;



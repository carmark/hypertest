#! /usr/bin/perl
package images::iron::node;

use strict;
use warnings;

sub name() {
	return "iron/node";
}

sub rank() {
	return 45;
}

sub link() {
}

sub run() {
	return "docker run -d iron/node node -v";
}

1;



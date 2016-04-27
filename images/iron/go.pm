#! /usr/bin/perl
package images::iron::go;

use strict;
use warnings;

sub name() {
	return "iron/go";
}

sub rank() {
	return 157;
}

sub link() {
}

sub run() {
	return "docker run -d iron/go go version";
}

1;



#! /usr/bin/perl
package images::ubuntu;

use strict;
use warnings;

sub name() {
	return "ubuntu";
}

sub rank() {
	return 8;
}

sub link() {
}

sub run() {
	return "docker run -d ubuntu";
}

1;



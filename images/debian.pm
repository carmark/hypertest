#! /usr/bin/perl
package images::debian;

use strict;
use warnings;

sub name() {
	return "debian";
}

sub rank() {
	return 42;
}

sub link() {
}

sub run() {
	return "docker run -d debian";
}

1;



#! /usr/bin/perl
package images::fedora;

use strict;
use warnings;

sub name() {
	return "fedora";
}

sub rank() {
	return 122;
}

sub link() {
}

sub run() {
	return "docker run -d fedora ls";
}

1;



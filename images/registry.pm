#! /usr/bin/perl
package images::registry;

use strict;
use warnings;

sub name() {
	return "registry";
}

sub rank() {
	return 12;
}

sub link() {
}

sub run() {
	return "docker run -d registry";
}

1;



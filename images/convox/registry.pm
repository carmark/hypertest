#! /usr/bin/perl
package images::convox::registry;

use strict;
use warnings;

sub name() {
	return "convox/registry";
}

sub rank() {
	return 149;
}

sub link() {
}

sub run() {
	return "docker run -d convox/registry";
}

1;



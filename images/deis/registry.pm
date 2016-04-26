#! /usr/bin/perl
package images::deis::registry;

use strict;
use warnings;

sub name() {
	return "deis/registry";
}

sub rank() {
	return 29;
}

sub link() {
}

sub run() {
	return "docker run -d deis/registry";
}

1;



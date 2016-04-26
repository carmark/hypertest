#! /usr/bin/perl
package images::arken::passivator;

use strict;
use warnings;

sub name() {
	return "arken/passivator";
}

sub rank() {
	return 98;
}

sub link() {
}

sub run() {
	return "docker run -d arken/passivator";
}

1;



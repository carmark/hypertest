#! /usr/bin/perl
package images::flynn::discoverd;

use strict;
use warnings;

sub name() {
	return "flynn/discoverd";
}

sub rank() {
	return 137;
}

sub link() {
}

sub run() {
	return "docker run -d flynn/discoverd";
}

1;



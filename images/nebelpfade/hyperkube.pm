#! /usr/bin/perl
package images::nebelpfade::hyperkube;

use strict;
use warnings;

sub name() {
	return "nebelpfade/hyperkube";
}

sub rank() {
	return 83;
}

sub link() {
}

sub run() {
	return "docker run -d nebelpfade/hyperkube";
}

1;



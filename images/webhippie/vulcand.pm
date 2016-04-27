#! /usr/bin/perl
package images::webhippie::vulcand;

use strict;
use warnings;

sub name() {
	return "webhippie/vulcand";
}

sub rank() {
	return 155;
}

sub link() {
}

sub run() {
	return "docker run -d webhippie/vulcand";
}

1;



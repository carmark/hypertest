#! /usr/bin/perl
package images::zzrot::whale_awkward;

use strict;
use warnings;

sub name() {
	return "zzrot/whale-awkward";
}

sub rank() {
	return 6;
}

sub link() {
}

sub run() {
	return "docker run -d zzrot/whale-awkward";
}

1;



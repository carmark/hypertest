#! /usr/bin/perl
package images::prom::prometheus;

use strict;
use warnings;

sub name() {
	return "prom/prometheus";
}

sub rank() {
	return 126;
}

sub link() {
}

sub run() {
	return "docker run -d prom/prometheus";
}

1;



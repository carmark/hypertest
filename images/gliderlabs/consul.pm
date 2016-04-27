#! /usr/bin/perl
package images::gliderlabs::consul;

use strict;
use warnings;

sub name() {
	return "gliderlabs/consul";
}

sub rank() {
	return 193;
}

sub link() {
}

sub run() {
	return "docker run -d gliderlabs/consul";
}

1;



#! /usr/bin/perl
package images::centos;

use strict;
use warnings;

sub name() {
	return "centos";
}

sub rank() {
	return 61;
}

sub link() {
}

sub run() {
	return "docker run -d centos";
}

1;



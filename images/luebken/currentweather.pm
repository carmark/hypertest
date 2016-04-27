#! /usr/bin/perl
package images::luebken::currentweather;

use strict;
use warnings;

sub name() {
	return "luebken/currentweather";
}

sub rank() {
	return 199;
}

sub link() {
}

sub run() {
	return "docker run -d luebken/currentweather";
}

1;



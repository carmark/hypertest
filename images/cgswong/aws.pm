#! /usr/bin/perl
package images::cgswong::aws;

use strict;
use warnings;

sub name() {
	return "cgswong/aws";
}

sub rank() {
	return 32;
}

sub link() {
}

sub run() {
	return "docker run -d cgswong/aws";
}

1;



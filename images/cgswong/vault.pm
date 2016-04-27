#! /usr/bin/perl
package images::cgswong::vault;

use strict;
use warnings;

sub name() {
	return "cgswong/vault";
}

sub rank() {
	return 195;
}

sub link() {
}

sub run() {
	return "docker run -d cgswong/vault";
}

1;



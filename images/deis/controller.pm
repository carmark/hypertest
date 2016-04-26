#! /usr/bin/perl
package images::deis::controller;

use strict;
use warnings;

sub name() {
	return "deis/controller";
}

sub rank() {
	return 56;
}

sub link() {
}

sub run() {
	return "docker run -d deis/controller";
}

1;



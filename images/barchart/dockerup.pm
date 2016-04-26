#! /usr/bin/perl
package images::barchart::dockerup;

use strict;
use warnings;

sub name() {
	return "barchart/dockerup";
}

sub rank() {
	return 25;
}

sub link() {
}

sub run() {
	return "docker run -d barchart/dockerup";
}

1;



#! /usr/bin/perl
package images::progrium::registrator;

use strict;
use warnings;

sub name() {
	return "progrium/registrator";
}

sub rank() {
	return 22;
}

sub link() {
}

sub run() {
	return "docker run -d progrium/registrator";
}

1;



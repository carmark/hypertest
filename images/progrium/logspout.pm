#! /usr/bin/perl
package images::progrium::logspout;

use strict;
use warnings;

sub name() {
	return "progrium/logspout";
}

sub rank() {
	return 55;
}

sub link() {
}

sub run() {
	return "docker run -d progrium/logspout";
}

1;



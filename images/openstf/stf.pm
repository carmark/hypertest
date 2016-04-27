#! /usr/bin/perl
package images::openstf::stf;

use strict;
use warnings;

sub name() {
	return "openstf/stf";
}

sub rank() {
	return 120;
}

sub link() {
}

sub run() {
	return "docker run -d openstf/stf";
}

1;



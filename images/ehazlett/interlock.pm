#! /usr/bin/perl
package images::ehazlett::interlock;

use strict;
use warnings;

sub name() {
	return "ehazlett/interlock";
}

sub rank() {
	return 48;
}

sub link() {
}

sub run() {
	return "docker run -d ehazlett/interlock";
}

1;



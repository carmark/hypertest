#! /usr/bin/perl
package images::crewjam::postgres;

use strict;
use warnings;

sub name() {
	return "crewjam/postgres";
}

sub rank() {
	return 113;
}

sub link() {
}

sub run() {
	return "docker run -d crewjam/postgres";
}

1;



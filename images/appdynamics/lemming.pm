#! /usr/bin/perl
package images::appdynamics::lemming;

use strict;
use warnings;

sub name() {
	return "appdynamics/lemming";
}

sub rank() {
	return 112;
}

sub link() {
}

sub run() {
	return "docker run -d appdynamics/lemming";
}

1;



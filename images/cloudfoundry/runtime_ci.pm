#! /usr/bin/perl
package images::cloudfoundry::runtime_ci;

use strict;
use warnings;

sub name() {
	return "cloudfoundry/runtime-ci";
}

sub rank() {
	return 182;
}

sub link() {
}

sub run() {
	return "docker run -d cloudfoundry/runtime-ci";
}

1;



#! /usr/bin/perl
package images::cloudfoundry::garden_busybox;

use strict;
use warnings;

sub name() {
	return "cloudfoundry/garden-busybox";
}

sub rank() {
	return 185;
}

sub link() {
}

sub run() {
	return "docker run -d cloudfoundry/garden-busybox";
}

1;



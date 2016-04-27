#! /usr/bin/perl
package images::rackops::ci_builds_cleanup;

use strict;
use warnings;

sub name() {
	return "rackops/ci-builds-cleanup";
}

sub rank() {
	return 109;
}

sub link() {
}

sub run() {
	return "docker run -d rackops/ci-builds-cleanup";
}

1;



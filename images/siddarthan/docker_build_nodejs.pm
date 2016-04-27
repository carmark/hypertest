#! /usr/bin/perl
package images::siddarthan::docker_build_nodejs;

use strict;
use warnings;

sub name() {
	return "siddarthan/docker-build-nodejs";
}

sub rank() {
	return 162;
}

sub link() {
}

sub run() {
	return "docker run -d siddarthan/docker-build-nodejs";
}

1;



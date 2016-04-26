#! /usr/bin/perl
package images::google::docker_registry;

use strict;
use warnings;

sub name() {
	return "google/docker-registry";
}

sub rank() {
	return 68;
}

sub link() {
}

sub run() {
	return "docker run -d google/docker-registry";
}

1;



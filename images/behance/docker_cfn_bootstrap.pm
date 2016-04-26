#! /usr/bin/perl
package images::behance::docker_cfn_bootstrap;

use strict;
use warnings;

sub name() {
	return "behance/docker-cfn-bootstrap";
}

sub rank() {
	return 57;
}

sub link() {
}

sub run() {
	return "docker run -d behance/docker-cfn-bootstrap";
}

1;



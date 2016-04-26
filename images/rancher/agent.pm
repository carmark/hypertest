#! /usr/bin/perl
package images::rancher::agent;

use strict;
use warnings;

sub name() {
	return "rancher/agent";
}

sub rank() {
	return 92;
}

sub link() {
}

sub run() {
	return "docker run -d rancher/agent";
}

1;



#! /usr/bin/perl
package images::swarm;

use strict;
use warnings;

sub name() {
	return "swarm";
}

sub rank() {
	return 11;
}

sub link() {
}

sub run() {
	return "docker run -d swarm";
}

1;



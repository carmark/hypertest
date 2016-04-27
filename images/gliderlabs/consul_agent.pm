#! /usr/bin/perl
package images::gliderlabs::consul_agent;

use strict;
use warnings;

sub name() {
	return "gliderlabs/consul-agent";
}

sub rank() {
	return 134;
}

sub link() {
}

sub run() {
	return "docker run -d gliderlabs/consul-agent";
}

1;



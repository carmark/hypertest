#! /usr/bin/perl
package images::gliderlabs::consul_server;

use strict;
use warnings;

sub name() {
	return "gliderlabs/consul-server";
}

sub rank() {
	return 188;
}

sub link() {
}

sub run() {
	return "docker run -d gliderlabs/consul-server";
}

1;



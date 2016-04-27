#! /usr/bin/perl
package images::ciscocloud::haproxy_consul;

use strict;
use warnings;

sub name() {
	return "ciscocloud/haproxy-consul";
}

sub rank() {
	return 124;
}

sub link() {
}

sub run() {
	return "docker run -d ciscocloud/haproxy-consul";
}

1;



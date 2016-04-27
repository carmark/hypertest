#! /usr/bin/perl
package images::haproxy;

use strict;
use warnings;

sub name() {
	return "haproxy";
}

sub rank() {
	return 132;
}

sub link() {
}

sub run() {
	return "docker run -d  --name haproxy-syntax-check haproxy:1.5 haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg";
}

1;



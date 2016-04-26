#! /usr/bin/perl
package images::brendanburns::redis_slave;

use strict;
use warnings;

sub name() {
	return "brendanburns/redis-slave";
}

sub rank() {
	return 33;
}

sub link() {
}

sub run() {
	return "docker run -d brendanburns/redis-slave";
}

1;



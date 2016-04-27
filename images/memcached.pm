#! /usr/bin/perl
package images::memcached;

use strict;
use warnings;

sub name() {
	return "memcached";
}

sub rank() {
	return 135;
}

sub link() {
}

sub run() {
	return "docker run --name my-memcache -d memcached";
}

1;



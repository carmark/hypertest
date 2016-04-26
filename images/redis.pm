#! /usr/bin/perl
package images::redis;

use strict;
use warnings;

sub name() {
	return "redis";
}

sub rank() {
	return 13;
}

sub link() {
}

sub run() {
	return "docker run --name some-redis -d redis";
}

1;



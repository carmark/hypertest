#! /usr/bin/perl
package images::jplock::zookeeper;

use strict;
use warnings;

sub name() {
	return "jplock/zookeeper";
}

sub rank() {
	return 152;
}

sub link() {
}

sub run() {
	return "docker run -d jplock/zookeeper";
}

1;



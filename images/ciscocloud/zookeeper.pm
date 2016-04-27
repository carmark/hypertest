#! /usr/bin/perl
package images::ciscocloud::zookeeper;

use strict;
use warnings;

sub name() {
	return "ciscocloud/zookeeper";
}

sub rank() {
	return 171;
}

sub link() {
}

sub run() {
	return "docker run -d ciscocloud/zookeeper";
}

1;



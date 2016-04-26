#! /usr/bin/perl
package images::tutum::influxdb;

use strict;
use warnings;

sub name() {
	return "tutum/influxdb";
}

sub rank() {
	return 97;
}

sub link() {
}

sub run() {
	return "docker run -d tutum/influxdb";
}

1;



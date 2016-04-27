#! /usr/bin/perl
package images::kubernetes::heapster_influxdb;

use strict;
use warnings;

sub name() {
	return "kubernetes/heapster_influxdb";
}

sub rank() {
	return 143;
}

sub link() {
}

sub run() {
	return "docker run -d kubernetes/heapster_influxdb";
}

1;



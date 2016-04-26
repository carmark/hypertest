#! /usr/bin/perl
package images::kibana;

use strict;
use warnings;

sub name() {
	return "kibana";
}

sub rank() {
	return 91;
}

sub link() {
	return "docker run --name some-elasticsearch -d elasticsearch";
}

sub run() {
	return "docker run --link some-elasticsearch:elasticsearch -d kibana";
}

1;



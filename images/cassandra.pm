#! /usr/bin/perl
package images::cassandra;

use strict;
use warnings;

sub name() {
	return "cassandra";
}

sub rank() {
	return 142;
}

sub link() {
}

sub run() {
	return "docker run --name some-cassandra -d cassandra";
}

1;



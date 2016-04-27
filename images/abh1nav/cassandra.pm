#! /usr/bin/perl
package images::abh1nav::cassandra;

use strict;
use warnings;

sub name() {
	return "abh1nav/cassandra";
}

sub rank() {
	return 178;
}

sub link() {
}

sub run() {
	return "docker run -d abh1nav/cassandra";
}

1;



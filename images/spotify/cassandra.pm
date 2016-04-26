#! /usr/bin/perl
package images::spotify::cassandra;

use strict;
use warnings;

sub name() {
	return "spotify/cassandra";
}

sub rank() {
	return 53;
}

sub link() {
}

sub run() {
	return "docker run -d spotify/cassandra";
}

1;



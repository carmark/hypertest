#! /usr/bin/perl
package images::rethinkdb;

use strict;
use warnings;

sub name() {
	return "rethinkdb";
}

sub rank() {
	return 181;
}

sub link() {
}

sub run() {
	return "docker run -d rethinkdb";
}

1;



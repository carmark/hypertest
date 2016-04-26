#! /usr/bin/perl
package images::deis::database;

use strict;
use warnings;

sub name() {
	return "deis/database";
}

sub rank() {
	return 46;
}

sub link() {
}

sub run() {
	return "docker run -d deis/database";
}

1;



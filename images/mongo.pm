#! /usr/bin/perl
package images::mongo;

use strict;
use warnings;

sub name() {
	return "mongo";
}

sub rank() {
	return 20;
}

sub link() {
}

sub run() {
	return "docker run --name some-mongo -d mongo";
}

1;



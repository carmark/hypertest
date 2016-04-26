#! /usr/bin/perl
package images::elasticsearch;

use strict;
use warnings;

sub name() {
	return "elasticsearch";
}

sub rank() {
	return 35;
}

sub link() {
}

sub run() {
	return "docker run -d elasticsearch";
}

1;



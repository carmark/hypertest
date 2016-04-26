#! /usr/bin/perl
package images::node;

use strict;
use warnings;

sub name() {
	return "node";
}

sub rank() {
	return 27;
}

sub link() {
}

sub run() {
	return "docker run -d  --name my-running-script -v /usr/src/app -w /usr/src/app node:4 node --help";
}

1;



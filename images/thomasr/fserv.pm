#! /usr/bin/perl
package images::thomasr::fserv;

use strict;
use warnings;

sub name() {
	return "thomasr/fserv";
}

sub rank() {
	return 87;
}

sub link() {
}

sub run() {
	return "docker run -d thomasr/fserv";
}

1;



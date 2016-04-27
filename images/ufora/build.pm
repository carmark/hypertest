#! /usr/bin/perl
package images::ufora::build;

use strict;
use warnings;

sub name() {
	return "ufora/build";
}

sub rank() {
	return 172;
}

sub link() {
}

sub run() {
	return "docker run -d ufora/build";
}

1;



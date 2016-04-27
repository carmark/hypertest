#! /usr/bin/perl
package images::flynn::bootstrap;

use strict;
use warnings;

sub name() {
	return "flynn/bootstrap";
}

sub rank() {
	return 161;
}

sub link() {
}

sub run() {
	return "docker run -d flynn/bootstrap";
}

1;



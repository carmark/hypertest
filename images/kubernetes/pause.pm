#! /usr/bin/perl
package images::kubernetes::pause;

use strict;
use warnings;

sub name() {
	return "kubernetes/pause";
}

sub rank() {
	return 15;
}

sub link() {
}

sub run() {
	return "docker run -d kubernetes/pause";
}

1;



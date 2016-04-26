#! /usr/bin/perl
package images::kubernetes::skydns;

use strict;
use warnings;

sub name() {
	return "kubernetes/skydns";
}

sub rank() {
	return 84;
}

sub link() {
}

sub run() {
	return "docker run -d kubernetes/skydns";
}

1;



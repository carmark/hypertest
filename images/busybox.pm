#! /usr/bin/perl
package images::busybox;

use strict;
use warnings;

sub name() {
	return "busybox";
}

sub rank() {
	return 4;
}

sub link() {
}

sub run() {
	return "docker run -d  busybox";
}

1;



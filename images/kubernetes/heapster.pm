#! /usr/bin/perl
package images::kubernetes::heapster;

use strict;
use warnings;

sub name() {
	return "kubernetes/heapster";
}

sub rank() {
	return 36;
}

sub link() {
}

sub run() {
	return "docker run -d kubernetes/heapster";
}

1;



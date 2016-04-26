#! /usr/bin/perl
package images::hello_world;

use strict;
use warnings;

sub name() {
	return "hello-world";
}

sub rank() {
	return 63;
}

sub link() {
}

sub run() {
	return "docker run -d hello-world";
}

1;



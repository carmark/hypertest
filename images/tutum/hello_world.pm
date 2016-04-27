#! /usr/bin/perl
package images::tutum::hello_world;

use strict;
use warnings;

sub name() {
	return "tutum/hello-world";
}

sub rank() {
	return 102;
}

sub link() {
}

sub run() {
	return "docker run -d tutum/hello-world";
}

1;



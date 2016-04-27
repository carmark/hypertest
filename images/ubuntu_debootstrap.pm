#! /usr/bin/perl
package images::ubuntu_debootstrap;

use strict;
use warnings;

sub name() {
	return "ubuntu-debootstrap";
}

sub rank() {
	return 141;
}

sub link() {
}

sub run() {
	return "docker run -d ubuntu-debootstrap";
}

1;



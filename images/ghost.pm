#! /usr/bin/perl
package images::ghost;

use strict;
use warnings;

sub name() {
	return "ghost";
}

sub rank() {
	return 166;
}

sub link() {
}

sub run() {
	return "docker run --name some-ghost -d ghost";
}

1;



#! /usr/bin/perl
package images::ruby;

use strict;
use warnings;

sub name() {
	return "ruby";
}

sub rank() {
	return 129;
}

sub link() {
}

sub run() {
	return "docker run  -v /usr/src/app -w /usr/src/app ruby ruby -v";
}

1;



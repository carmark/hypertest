#! /usr/bin/perl
package images::iron::ruby;

use strict;
use warnings;

sub name() {
	return "iron/ruby";
}

sub rank() {
	return 177;
}

sub link() {
}

sub run() {
	return "docker run -d iron/ruby ruby -v";
}

1;



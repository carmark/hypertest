#! /usr/bin/perl
package images::sreekar::gogocar1;

use strict;
use warnings;

sub name() {
	return "sreekar/gogocar1";
}

sub rank() {
	return 159;
}

sub link() {
}

sub run() {
	return "docker run -d sreekar/gogocar1";
}

1;



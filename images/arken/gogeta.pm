#! /usr/bin/perl
package images::arken::gogeta;

use strict;
use warnings;

sub name() {
	return "arken/gogeta";
}

sub rank() {
	return 192;
}

sub link() {
}

sub run() {
	return "docker run -d arken/gogeta";
}

1;



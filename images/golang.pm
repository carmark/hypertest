#! /usr/bin/perl
package images::golang;

use strict;
use warnings;

sub name() {
	return "golang";
}

sub rank() {
	return 101;
}

sub link() {
}

sub run() {
	return "docker run  -v /usr/src/myapp -w /usr/src/myapp golang:1.6 go build -v";
}

1;



#! /usr/bin/perl
package images::java;

use strict;
use warnings;

sub name() {
	return "java";
}

sub rank() {
	return 81;
}

sub link() {
}

sub run() {
	return "docker run  -v /usr/src/myapp -w /usr/src/myapp -d java java -?";
}

1;



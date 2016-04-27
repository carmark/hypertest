#! /usr/bin/perl
package images::oraclelinux;

use strict;
use warnings;

sub name() {
	return "oraclelinux";
}

sub rank() {
	return 167;
}

sub link() {
}

sub run() {
	return "docker run -d oraclelinux";
}

1;



#! /usr/bin/perl
package images::tutum::mysql;

use strict;
use warnings;

sub name() {
	return "tutum/mysql";
}

sub rank() {
	return 153;
}

sub link() {
}

sub run() {
	return "docker run -d  tutum/mysql";
}

1;



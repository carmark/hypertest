#! /usr/bin/perl
package images::lumitary::ts3_server;

use strict;
use warnings;

sub name() {
	return "lumitary/ts3-server";
}

sub rank() {
	return 183;
}

sub link() {
}

sub run() {
	return "docker run -d lumitary/ts3-server";
}

1;



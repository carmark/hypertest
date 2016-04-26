#! /usr/bin/perl
package images::tianon::speedtest;

use strict;
use warnings;

sub name() {
	return "tianon/speedtest";
}

sub rank() {
	return 38;
}

sub link() {
}

sub run() {
	return "docker run -d tianon/speedtest";
}

1;



#! /usr/bin/perl
package images::skynetservices::skydns;

use strict;
use warnings;

sub name() {
	return "skynetservices/skydns";
}

sub rank() {
	return 26;
}

sub link() {
}

sub run() {
	return "docker run -d skynetservices/skydns";
}

1;



#! /usr/bin/perl
package images::vaikas::nodejsservice;

use strict;
use warnings;

sub name() {
	return "vaikas/nodejsservice";
}

sub rank() {
	return 18;
}

sub link() {
}

sub run() {
	return "docker run -d vaikas/nodejsservice";
}

1;



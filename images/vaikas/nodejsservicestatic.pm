#! /usr/bin/perl
package images::vaikas::nodejsservicestatic;

use strict;
use warnings;

sub name() {
	return "vaikas/nodejsservicestatic";
}

sub rank() {
	return 165;
}

sub link() {
}

sub run() {
	return "docker run -d vaikas/nodejsservicestatic";
}

1;



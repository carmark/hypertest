#! /usr/bin/perl
package images::barchart::crypter;

use strict;
use warnings;

sub name() {
	return "barchart/crypter";
}

sub rank() {
	return 49;
}

sub link() {
}

sub run() {
	return "docker run -d barchart/crypter";
}

1;



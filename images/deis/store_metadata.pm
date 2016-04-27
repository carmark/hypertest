#! /usr/bin/perl
package images::deis::store_metadata;

use strict;
use warnings;

sub name() {
	return "deis/store-metadata";
}

sub rank() {
	return 128;
}

sub link() {
}

sub run() {
	return "docker run -d deis/store-metadata";
}

1;



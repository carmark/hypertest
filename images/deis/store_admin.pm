#! /usr/bin/perl
package images::deis::store_admin;

use strict;
use warnings;

sub name() {
	return "deis/store-admin";
}

sub rank() {
	return 103;
}

sub link() {
}

sub run() {
	return "docker run -d deis/store-admin";
}

1;



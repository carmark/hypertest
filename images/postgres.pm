#! /usr/bin/perl
package images::postgres;

use strict;
use warnings;

sub name() {
	return "postgres";
}

sub rank() {
	return 30;
}

sub link() {
}

sub run() {
	return "docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres";
}

1;



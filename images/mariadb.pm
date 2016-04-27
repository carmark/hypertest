#! /usr/bin/perl
package images::mariadb;

use strict;
use warnings;

sub name() {
	return "mariadb";
}

sub rank() {
	return 133;
}

sub link() {
}

sub run() {
	return "docker run --name some-mariadb -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mariadb:tag";
}

1;



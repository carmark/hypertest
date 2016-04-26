#! /usr/bin/perl
package images::mysql;

use strict;
use warnings;

sub name() {
	return "mysql";
}

sub rank() {
	return 19;
}

sub link() {
}

sub run() {
	return "docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag";
}

1;



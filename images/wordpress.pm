#! /usr/bin/perl
package images::wordpress;

use strict;
use warnings;

sub name() {
	return "wordpress";
}

sub rank() {
	return 41;
}

sub link() {
	return "docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql";
}

sub run() {
	return "docker run --name some-wordpress --link some-mysql:mysql -d wordpress";
}

1;



#! /usr/bin/perl
package images::kubernetes::example_guestbook_php_redis;

use strict;
use warnings;

sub name() {
	return "kubernetes/example-guestbook-php-redis";
}

sub rank() {
	return 163;
}

sub link() {
}

sub run() {
	return "docker run -d kubernetes/example-guestbook-php-redis";
}

1;



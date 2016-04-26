#! /usr/bin/perl
package images::nginx;

use strict;
use warnings;

sub name() {
	return "nginx";
}

sub rank() {
	return 3;
}

sub link() {
}

sub run() {
	return "docker run --name some-nginx -v /usr/share/nginx/html -d nginx";
}

1;



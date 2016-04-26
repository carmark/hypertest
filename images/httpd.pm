#! /usr/bin/perl
package images::httpd;

use strict;
use warnings;

sub name() {
	return "httpd";
}

sub rank() {
	return 50;
}

sub link() {
}

sub run() {
	return "docker run -d  --name my-apache-app -v /usr/local/apache2/htdocs/ httpd:2.4";
}

1;



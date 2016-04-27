#! /usr/bin/perl
package images::tomcat;

use strict;
use warnings;

sub name() {
	return "tomcat";
}

sub rank() {
	return 106;
}

sub link() {
}

sub run() {
	return "docker run -d  tomcat";
}

1;



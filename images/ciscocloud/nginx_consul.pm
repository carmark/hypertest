#! /usr/bin/perl
package images::ciscocloud::nginx_consul;

use strict;
use warnings;

sub name() {
	return "ciscocloud/nginx-consul";
}

sub rank() {
	return 52;
}

sub link() {
}

sub run() {
	return "docker run -d ciscocloud/nginx-consul";
}

1;



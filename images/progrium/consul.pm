#! /usr/bin/perl
package images::progrium::consul;

use strict;
use warnings;

sub name() {
	return "progrium/consul";
}

sub rank() {
	return 24;
}

sub link() {
}

sub run() {
	return "docker run -h node1 progrium/consul -server -bootstrap";
}

1;



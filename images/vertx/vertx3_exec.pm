#! /usr/bin/perl
package images::vertx::vertx3_exec;

use strict;
use warnings;

sub name() {
	return "vertx/vertx3-exec";
}

sub rank() {
	return 125;
}

sub link() {
}

sub run() {
	return "docker run -d vertx/vertx3-exec";
}

1;



#! /usr/bin/perl
package images::kuberdock::fluentd;

use strict;
use warnings;

sub name() {
	return "kuberdock/fluentd";
}

sub rank() {
	return 107;
}

sub link() {
}

sub run() {
	return "docker run -d kuberdock/fluentd";
}

1;



#! /usr/bin/perl
package images::newrelic::nrsysmond;

use strict;
use warnings;

sub name() {
	return "newrelic/nrsysmond";
}

sub rank() {
	return 7;
}

sub link() {
}

sub run() {
	return "docker run -d newrelic/nrsysmond";
}

1;



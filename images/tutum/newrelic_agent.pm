#! /usr/bin/perl
package images::tutum::newrelic_agent;

use strict;
use warnings;

sub name() {
	return "tutum/newrelic-agent";
}

sub rank() {
	return 168;
}

sub link() {
}

sub run() {
	return "docker run -d tutum/newrelic-agent";
}

1;



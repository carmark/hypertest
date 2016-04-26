#! /usr/bin/perl
package images::brandnetworks::cloudwatch_monitor;

use strict;
use warnings;

sub name() {
	return "brandnetworks/cloudwatch-monitor";
}

sub rank() {
	return 31;
}

sub link() {
}

sub run() {
	return "docker run -d brandnetworks/cloudwatch-monitor";
}

1;



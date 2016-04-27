#! /usr/bin/perl
package images::rtux::cloudwatch_monitor;

use strict;
use warnings;

sub name() {
	return "rtux/cloudwatch-monitor";
}

sub rank() {
	return 190;
}

sub link() {
}

sub run() {
	return "docker run -d rtux/cloudwatch-monitor";
}

1;



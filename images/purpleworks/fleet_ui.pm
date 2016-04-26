#! /usr/bin/perl
package images::purpleworks::fleet_ui;

use strict;
use warnings;

sub name() {
	return "purpleworks/fleet-ui";
}

sub rank() {
	return 85;
}

sub link() {
}

sub run() {
	return "docker run -d purpleworks/fleet-ui";
}

1;



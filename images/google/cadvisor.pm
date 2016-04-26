#! /usr/bin/perl
package images::google::cadvisor;

use strict;
use warnings;

sub name() {
	return "google/cadvisor";
}

sub rank() {
	return 2;
}

sub link() {
}

sub run() {
	return "docker run -d google/cadvisor";
}

1;



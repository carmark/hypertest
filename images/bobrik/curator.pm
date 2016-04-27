#! /usr/bin/perl
package images::bobrik::curator;

use strict;
use warnings;

sub name() {
	return "bobrik/curator";
}

sub rank() {
	return 154;
}

sub link() {
}

sub run() {
	return "docker run -d bobrik/curator";
}

1;



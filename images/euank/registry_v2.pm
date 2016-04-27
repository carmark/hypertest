#! /usr/bin/perl
package images::euank::registry_v2;

use strict;
use warnings;

sub name() {
	return "euank/registry-v2";
}

sub rank() {
	return 187;
}

sub link() {
}

sub run() {
	return "docker run -d euank/registry-v2";
}

1;



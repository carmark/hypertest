#! /usr/bin/perl
package images::mesosphere::chronos;

use strict;
use warnings;

sub name() {
	return "mesosphere/chronos";
}

sub rank() {
	return 89;
}

sub link() {
}

sub run() {
	return "docker run -d mesosphere/chronos";
}

1;



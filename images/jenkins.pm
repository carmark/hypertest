#! /usr/bin/perl
package images::jenkins;

use strict;
use warnings;

sub name() {
	return "jenkins";
}

sub rank() {
	return 59;
}

sub link() {
}

sub run() {
	return "docker run -d jenkins";
}

1;



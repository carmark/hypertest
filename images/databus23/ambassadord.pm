#! /usr/bin/perl
package images::databus23::ambassadord;

use strict;
use warnings;

sub name() {
	return "databus23/ambassadord";
}

sub rank() {
	return 145;
}

sub link() {
}

sub run() {
	return "docker run -d databus23/ambassadord";
}

1;



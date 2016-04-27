#! /usr/bin/perl
package images::euank::dummy_5m_image;

use strict;
use warnings;

sub name() {
	return "euank/dummy-5m-image";
}

sub rank() {
	return 123;
}

sub link() {
}

sub run() {
	return "docker run -d euank/dummy-5m-image";
}

1;



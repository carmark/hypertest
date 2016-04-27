#! /usr/bin/perl
package images::centurylink::wordpress;

use strict;
use warnings;

sub name() {
	return "centurylink/wordpress";
}

sub rank() {
	return 115;
}

sub link() {
}

sub run() {
	return "docker run -d centurylink/wordpress";
}

1;



#! /usr/bin/perl
package images::centurylink::drupal;

use strict;
use warnings;

sub name() {
	return "centurylink/drupal";
}

sub rank() {
	return 175;
}

sub link() {
}

sub run() {
	return "docker run  --name DRUPAL --link DB:DB centurylink/drupal:7.34";
}

1;



#! /usr/bin/perl
package images::saturnism::spring_boot_helloworld_ui;

use strict;
use warnings;

sub name() {
	return "saturnism/spring-boot-helloworld-ui";
}

sub rank() {
	return 144;
}

sub link() {
}

sub run() {
	return "docker run -d saturnism/spring-boot-helloworld-ui";
}

1;



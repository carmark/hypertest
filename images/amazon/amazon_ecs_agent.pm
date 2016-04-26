#! /usr/bin/perl
package images::amazon::amazon_ecs_agent;

use strict;
use warnings;

sub name() {
	return "amazon/amazon-ecs-agent";
}

sub rank() {
	return 17;
}

sub link() {
}

sub run() {
	return "docker run -d amazon/amazon-ecs-agent";
}

1;



#! /usr/bin/perl
package images::dynamodbecosystemdev::dynamodbcrossregionreplication;

use strict;
use warnings;

sub name() {
	return "dynamodbecosystemdev/dynamodbcrossregionreplication";
}

sub rank() {
	return 173;
}

sub link() {
}

sub run() {
	return "docker run -d dynamodbecosystemdev/dynamodbcrossregionreplication";
}

1;



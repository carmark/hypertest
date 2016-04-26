#! /usr/bin/perl
package images::gitlab::gitlab_ce;

use strict;
use warnings;

sub name() {
	return "gitlab/gitlab-ce";
}

sub rank() {
	return 28;
}

sub link() {
}

sub run() {
	return "docker run -d gitlab/gitlab-ce";
}

1;



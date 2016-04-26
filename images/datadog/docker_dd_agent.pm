#! /usr/bin/perl
package images::datadog::docker_dd_agent;

use strict;
use warnings;

sub name() {
	return "datadog/docker-dd-agent";
}

sub rank() {
	return 21;
}

sub link() {
}

sub run() {
	return "docker run -d --name dd-agent -h `hostname` -v /var/run/docker.sock -v /proc/:/host/proc/:ro -v /host/sys/fs/cgroup -v /conf.d -e API_KEY={your_api_key_here} datadog/docker-dd-agent";
}

1;



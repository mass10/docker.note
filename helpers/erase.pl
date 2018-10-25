#!/usr/bin/env perl
# coding: utf-8

use strict;
use utf8;

sub _readline {

	my ($line) = @_;



	if ($line =~ m/\ACONTAINER\ ID/ms) {
		return undef;
	}
	if ($line =~ m/\A([a-zA-Z0-9\-\_]+) /ms) {
		return $1;
	}
	return undef;
}

sub _remove {

	my ($container_id) = @_;



	if(!length($container_id)) {
		return;
	}

	system('docker', 'rm', $container_id);
}

sub _println {

	print(@_, "\n");
}

sub _erase {

	my $stream;

	open($stream, 'docker ps --all --filter \'status=exited\' |');

	while(my $line = <$stream>) {

		my $container_id = _readline($line);

		_remove($container_id);
	}

	close($stream)
}

sub _main {

	_erase();
}

_main(@ARGV);

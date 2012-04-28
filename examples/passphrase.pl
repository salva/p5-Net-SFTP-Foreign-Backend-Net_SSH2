#!/usr/bin/perl

use strict;
use warnings;

use 5.010;

$Net::SFTP::Foreign::debug =-1;
my $s = Net::SFTP::Foreign->new('localhost',
                                backend => 'Net_SSH2',
                                user => 'salva',
                                key_path => 'examples/id_dsa',
                                passphrase => 'farolero',
                                autodie => 1);
say $s->cwd;

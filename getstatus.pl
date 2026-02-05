#!/usr/bin/env perl

use strict;
use warnings;
use IO::Socket::INET;

my $server_ip = '127.0.0.1';
my $server_port = 27960;

# Create a UDP socket
my $socket = IO::Socket::INET->new(
    Proto    => 'udp',
    PeerAddr => $server_ip,
    PeerPort => $server_port,
) or die "Could not create socket: $!";

# Send the Quake 3 status request
my $request = "\xFF\xFF\xFF\xFFgetstatus\x00";
$socket->send($request) or die "Failed to send request: $!";

# Wait for a response (timeout after 2 seconds)
my $response;
$socket->recv($response, 1024);
unless (defined $response) {
    print "No response from server.\n";
    exit;
}

# Print the response
print "Server response:\n$response\n";

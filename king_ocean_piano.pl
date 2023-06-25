#!/usr/bin/perl 
use strict;
use warnings;

# Create a map of the fun-filled entertainment center
my $map = {
	'Arcade Games' => {
 		'Space Invaders' => {
 			'Location' => 'Bottom Floor'
 		},
 		'Pacman' => {
 			'Location' => 'Bottom Floor'
 		},
 		
 		'Donkey Kong' => {
 			 'Location' => 'Top Floor'
 		},
 	},
 	
	'Laser Tag' => {
 		'Cost' => 10,
 		'Number of Players' => 4,
 		'Location' => 'Top Floor'
 	},
 	
	'Bowling' => {
 		'Cost' => 10,
 		'Number of Lanes' => 8,
 		'Location' => 'Bottom Floor'
 	},
 	
	'Café' => {
 		'Menu' => 'Pizza, sandwiches, snacks, and drinks',
 		'Location' => 'Middle Floor'
 	},
 	
	'Party Room' => {
 		'Size' => '1000sq feet',
 		'Number of Rooms' => 2
 	}
};

# Create a method to check for the availability of games in the center
sub checkAvailability {
	my ($game) = @_;
	
	if (exists $map->{$game}) {
		print "Game '$game' is available at the entertainment center.\n";
	}
	else {
		print "Game '$game' is not available at the entertainment center.\n";
	}
}

# Create a method to print the details of a game
sub printGameDetails {
	my ($game) = @_;
	
	if (exists $map->{$game}) {
		my $details = $map->{$game};
		
		print "\n\n$game Details\n\n";
		while (my ($name, $attr) = each %{$details}) {
			print "$name: $attr\n";
		}
	}
	else {
		print "Game '$game' is not available at the entertainment center.\n";
	}
}

# Main loop
while (1) {
	print "\n\nEntertainment Center\n1. Check Availability\n2. Print Game Details\n3. Exit\nEnter your choice: ";
	chomp(my $choice = <STDIN>);
	
	if ($choice == 1) {
		print "Enter the game name: ";
		chomp(my $game = <STDIN>);
		checkAvailability($game);
	}
	elsif ($choice == 2) {
		print "Enter the game name: ";
		chomp(my $game = <STDIN>);
		printGameDetails($game);
	}
	elsif ($choice == 3) {
		exit;
	}
	else {
		print "Invalid choice!\n";
	}
}
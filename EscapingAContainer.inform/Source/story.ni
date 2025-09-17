"Escaping A Container" by Alix Leonhart

Part 1 - Rooms

[Obligatory Room]
Hotel Lobby is a room. "An old timey hotel with only one thing of interest -[line break]...a wonky sissor hinge ancient paternoster elevator.".

[Our enterable container is an elevator within the room, but you could make a bed, a boat, or even an armoire to Narnia.]
elevator is enterable scenery container in Hotel Lobby.
The description is "An old rusty elevator." 
Understand "lift" and "paternoster" as the elevator. 
the elevator is open.
	
[Let's put stuff in our elevator for puzzle solving later]
Understand "joystick", "handle", and "lever" as lever handle.
lever handle is a device. lever handle is fixed in place inside elevator.
The description of handle is "An elevator elevator joystick to go up or down
brick bag is in elevator.".

Bag of bricks is in elevator.
The description of bag of bricks is "A heavy 50lbs bag of bricks".
Understand "bricks" as bag of bricks.

Part 2 - Actions & Rules
	
[Back up action synonym for trying to leave something.]
Understand the commands "exit", "leave", "throw", and "pull" as something new.

Getting out of is an action applying to one thing. Understand "get out of [something]" and "exit [something]" as getting out of.

[You could technically cheat with the built-in command "exit" so we will overwrite it to mean nothing and then guide the parser to interpret it as leaving the elevator]
Does the player mean getting out of elevator: it is very likely.

[Create Second Action for lever operation]
Operating is an action applying to one visible thing.
Understand "pull [something]", "push [something]", "operate [something]", and "crank [something]" as operating.

[one more action for throwing something, generally not at anything]
Throwing is an action applying to one carried thing.
Understand "throw [something]", "lob [something]", "toss [something]" as throwing.


[Rule for the requirement of being inside a container to access internal items, a little wonky but also works for supporters]
Before taking something:
	if the player is enclosed by an enterable container (called C) or the player is enclosed by an enterable supporter (called S):
		if the noun is not enclosed by C and the noun is not enclosed by S:
			say "You can't reach [the noun] from here." instead.

Part 3 - Puzzle
[Puzzle Setup, creating two statuses of the elevator and setting the initial one]

Elevator can be jammed or Notjammed. elevator is Notjammed.

[Creating our start of locking our player in the elevator once entered.]
carry out player entering elevator:
	say "You enter the rickety elevator and as soon as you turn to face the old lift handle, the elevator lurches down a few feet and the door grill slams shut!";
	now elevator is jammed.
	
[Making our player stuck]
check getting out of elevator:
	if elevator is jammed:
		say "You can't the elevator door is stuck tight, maybe if the elevator can be raised up to it's normal resting location.";
	Otherwise:
		if player is inside elevator:
			say "You triumphantly leave the old elevator!";
			now player is in hotel lobby;
		otherwise:
			say "You are not inside the elevator currently!".

[two part puzzle]
instead of throwing bag of bricks:
	now bag of bricks is in hotel lobby;
	say "Brick by brick you throw them through the elevator gate from the bag until there are none left and notice more of a spring to your steps in the elevator.".

check operating lever handle:
	if bag of bricks is in elevator:
		say "the elevator grinds it seems too heavy to move up a few feet back into place.";
	otherwise:
		say "Grabbing the lift handle you bring the elevator back up completely aligned to the egress and the rusty grate swings open!";
		now the elevator is Notjammed.

Part 4 - Winning Condition
[Puzzle win conditions are simply - is the player in the container and the container has certain things in it.]

Every turn:
	if elevator is Notjammed:
		now the right hand status line is "Not Jammed";
	if player had been inside elevator for three turns:
		say "Oh no you got to get out of here!";
		if bag of bricks is inside elevator:
			say "Maybe there is a way to reduce the weight" instead;
		if bag of bricks is inside elevator for 9 turns:
			say "maybe you can throw the bricks out of the elevator.";
	if bag of bricks is in hotel lobby and player is not in elevator:
		end the story saying "Whew! You escaped the elevator!".
		
		


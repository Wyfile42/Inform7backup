"Escaping A Container" by Alix Leonhart

Part 1 - Setup

[Let's start the player on/in da bed!]
When Play begins:
	say "Today is the day! You just know it! You are going to escape the bed!";
	move the player to bed, without printing a room description.

Part 2 - Rooms

[Obligatory Room]
Bedroom is a room. "It's my person's old bedroom".

[items the room]
basket is a container in bedroom. basket is fixed in place.
The description of basket is "A laundry basket beside the bed.".

[The enterable bed.]
bed is enterable scenery container in bedroom.
The description is "A quaint single bed.".
	
Part 3 - Bed Setup

[Put some stuff on that bed yo. Pillow would probably be better suited as a push puzzle be this is quicker for an example making the supporter pillow portable.]
decorative pillow is in bed. decorative pillow is a portable supporter.
The description of decorative pillow is "An aesthetic, if uncomfortable, pillow in a cross-stitched sham.".
Understand "pillow" as decorative pillow.

[putting stuff on the stuff]
stuffed animal is a person on decorative pillow.
The description of stuffed animal is "A cute & quirky anthropomorphized creature.".
Understand "animal" and "plushie" as stuffed animal.

pillow mint is on decorative pillow.
The description of pillow mint is "A small tasty mint candy.".
Understand "mint" and "candy" as pillow mint.

Part 4 - Actions & Rules
	
[Back up action synonym for trying to leave something.]
Understand the commands "exit", "leave", "throw", and "pull" as something new.

Getting out of is an action applying to one thing. Understand "get out of [something]" and "exit [something]" as getting out of.

[Let's create a talking action to speak with the stuffed animal plushie.]
Talking to is an action applying to one visible thing.
Understand "speak with [something]", "talk to [something]", "converse with [something]", "chat with [something]", and "greet [something]" as talking to.

[You could technically cheat with the built-in command "exit" so we will overwrite it to mean nothing and then guide the parser to interpret it as leaving the bed]
Does the player mean getting out of bed: it is very likely.

[Rule for the requirement of being inside a container to access internal items, a little wonky but also works for supporters - this makes it so that you could not grab plushies on the bed if you were not on the bed.]
Before taking something:
	if the player is enclosed by an enterable container (called C) or the player is enclosed by an enterable supporter (called S):
		if the noun is not enclosed by C and the noun is not enclosed by S:
			say "You can't reach [the noun] from here." instead.
			
[Giving blank to blank |&| throw blank at blank, are built-in inform functions which we could expand on but for now we'll just use em']

[Expanding the understanding of the internal action of throw]
Understand "toss [something] at [something]", "lob [something] at [something]", "chuck [something] at [something]", "throw [something] at [something]" and "hurl [something] at [something]" as throwing it at.

understand "jump off bed", "fall off bed", and "hop off bed" as exiting.

Part 5 - Puzzle

[Puzzle Setup, creating two statuses of the basket and setting the initial one that we want the player to remedy.]
basket can be hard or soft. basket is hard.

[Setting plushie stuffed animal first puzzle - tempt the plushie by giving them candy]
check giving pillow mint to stuffed animal:
	now stuffed animal is carrying pillow mint;
	say "The Plushie is visibly excited saying 'Oh goodness! Thank you so much! Please let me know if I can ever do anything to return the favor!'" instead;
	
Instead of talking to or taking stuffed animal:
	if stuffed animal is on decorative pillow:
		say "You implore the friendly beast of wonkiness to leave the decorative pillow it is set upon[line break]";
		if stuffed animal is carrying pillow mint:
			say "The plushie says 'Sure anything for my friend!' and hops down onto the bed.";
			now the stuffed animal is in bed;
		Otherwise:
			say "'I am actually quite comfortable here, is there anything you can give me to sweeten the deal?' says the stuffed animal (yes/no)[line break]";
			if player consents:
				If the player is carrying pillow mint:
					now stuffed animal is carrying pillow mint;
					say "Giving the pillow mint over to the stuffed animal plushie,[line break]They say 'Aw thank you so much, I'll hop off it now!'";
				Otherwise:
					say "'Meh and hurmph! You have nothing of interest to my sweet-tooth.' says the stuffed animal";
			otherwise:
				say "Plushie says 'Well then I am not moving!";
	otherwise:
		say "Thank you so much for the delicious treat! I wish you success and a soft landing in your great adventures!".
		
[action for getting the bed cleared via tossing the pillow]

check throwing decorative pillow at basket:
	now the basket is soft;
	now the decorative pillow is in basket;
	say "you hurl the decorative pillow the best you can, but it ends up being really more of a tumbling push. It still lands in the basket." instead.
	
[Making our player stuck]
instead of exiting, try getting out of bed.

check getting out of bed:
	if basket is hard:
		say "There is a basket you can jump into from the bed, but you can't jump from here currently as the landing would be to hard!";
	Otherwise:
		if decorative pillow is inside basket:
			say "You triumphantly leap from the bed, steeling yourself, waving to the plushie waving and... land softly on the pillow![line break]Climbing down from the basket you are now on the bedroom floor!";
			end the story saying "Hooray and Congratulations! You've escaped the bed!" instead;
		otherwise:
			say "You anxiously peer over the bed's ledge, it looks like the basket would be too hard of a landing without something softer inside.".

Part 6 - Winning Condition
[Puzzle win conditions are simply - is the player simply not on (inside) the bed anymore.]

Every turn:
	if player is not inside bed:
		end the story saying "Hooray and Congratulations! You've escaped the bed!".
		
[Hint System for the Player, every 5 turns]
Every turn when the remainder after dividing the turn count by 6 is 0:
	say "There must be a way off this bed!";
	if stuffed animal is on decorative pillow:
		say "Perhaps you can lure the plushi off the pillow with a treat" instead;
	if decorative pillow is in basket:
		say "It might be time to try jumping into the basket!";
	Otherwise:
		say "Perhaps the pillow in the basket would make it soft enough to land a jump.".


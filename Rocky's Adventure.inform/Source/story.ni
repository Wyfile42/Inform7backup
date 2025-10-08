"What Rocky Does When No One's Around" by Emily Seifert

when play begins:
	now the right hand status line is "Time: [time of day]";
	move player to bed, without printing a room description.
	
Part 1- Bedroom
[things to do inside- get off bed, talk to plushies, go on laptop.]

Bedroom is a room."The room where the human resides for most of her time during the school year. [first time]It's cozy. A galaxy themed aesthetic fills the bedsheets on the bed in which you and your fellow plushies lay on top of. The human is gone until 3pm, including her roommates. [only]

The way to leave the room is to the north. It's time to explore."
The Bed is an enterable scenery container in the bedroom.
The description of the Bed is "You are on the bed, there are other plushies on the pillows behind you." 

Pillows are an undescribed portable supporter in the bed.
Plushies are on the pillows.
Rabbit is an undescribed object in the bed. 

The description of Rabbit is "It's the plushie sitting in front of the pillows, it looks reasonable to talk to."

Understand "rabbit plushie","brown rabbit","thin rabbit", and "grey rabbit" as rabbit.
 
The description of Plushies are "[If plushies is on pillows]There's a variety of little plush toys placed gently on each pillow. [end if] They range from two tiny foxes, a white dog with a red target for an eye, and 4 bunnies of different shapes and sizes. The thin brown and grey rabbit sitting in front of the first pillow seems the most reasonable to talk to."

The description of Pillows are "There are 4 pillows neatly stacked in front of each other. They could make for some good cushions if not for your friends on top."


[techinical phrase and puzzle jargin in bed and room]

Talking to is an action applying to a thing.		
Understand the command "talk" as something new. Understand "Talk to [something]", "talk [something]", and "talking to[something]" as talking to. 
 
Understand the commands "exit", "leave", and "throw" as something new.

Understand "grab[something]", and "pick up[something]" as taking.

Getting out of is an action applying to one thing. Understand "get out of [something]" and "exit [something]", and "leave [something]" as getting out of.

Throwing is an action applying to one carried thing.
Understand "throw [something]", "lob [something]", and "toss [something]" as throwing.

Understand "jump off bed", "fall off bed", and "hop off bed" as exiting.

Sitting is an action applying to a thing.
Understand "sit [something]", "sit on [something]" and "sit on the [something]" as sitting.

Using is an action applying to a thing.
Understand "use [something]", "using [something]" as using.

Unlocking is an action applying to one thing.
Understand "unlock[something]", "unlocking[something]", and "open[something]" as unlocking. 

Before taking something:
	if the player is enclosed by an enterable container (called C) or the player is enclosed by an enterable supporter (called S):
		if the noun is not enclosed by C and the noun is not enclosed by S:
			say "You can't reach [the noun] from here." instead.


[_Bed Puzzles_]

Instead of taking plushies:
	say "Force is not the best way to solve your issues."
	
Instead of taking Pillows: 
	If plushies are on pillows:
		say "You don't want to move them when your plush friends are on top!";
	Otherwise:
		If plushies are not on pillows:
			say "[first time]Now that your friends are no longer on the pillows, [only]you take them.";
			now player has pillows.
			
	Report talking to plushies:
		say "As you attempt to ask the plushies to move, the white branded dog on top of the hoard interjects [line break]
		'Hey!' he says, 'We aren't gonna move just because you asked us!!'[paragraph break]
		'Yeah! The foxes and smaller rabbits say, 'We only follow what each other here on the pillows say! [paragraph break]
		It looks as if you might need to find a more reasonable plushie."	
	Report talking to Rabbit:
	 	say "'You appraoch the brown-grey rabbit instead. [line break] Hi Rocky! What do you need?' the rabbit says.[paragraph break]
	You politely ask the rabbit for him and the others plushies to leave the pillows so you can use them.[paragraph break]
	'Oh! Okay! It would probably be a good change of scenery.' it says as it convinces the others to leave. 'Good luck with whatever you're doing! :)'";
		Now plushies are on the bed.
		
Carry out throwing:
	If throwing pillows:
		say "one by one you toss the pillows over the edge of the bed. They seemed to have made quite the pile to break your stuffed fall.";
		now pillows are in the bedroom.

Does the player mean getting out of the bed: it is very likely.

Instead of exiting, try getting out of the bed.

Check getting out of the bed:
	If Pillows are in the bed:
		say "You may be made of fluff, but that would hurt!" instead;
	Otherwise:
		If Pillows are not in the bed:
			say "[first time]You jump on the pile of pillows as they cushion your fall to the floor.[only]";
			now the player is in the bedroom;
			
After getting out of bed:
	Now time of day is 9:30 AM.	
		
Part 2 - Outside bed		
[YAAAAY EVERYTHING OUT OF THIS GODFORSAKEN BED!!]

[items]
Bedroom door is a door. Bedroom door is scenery. Bedroom door is north of the bedroom and south of the hallway. Bedroom door is lockable and locked.
The description of Bedroom door is "It's a plain white wooden door. You could open it if you had something to stand on."
Pillow is a portable scenery object in the bedroom.
Pillow unlocks the bedroom door.
Chair is an enterable scenery supporter in the bedroom. 
The description of the chair is "It's a wooden chair with a cushioned seat and backing. You're just tall enough to climb on top."
The Desk is undescribed scenery in the bedroom. 
The description of the Desk is "It's a bit messy, but yet organized. The laptop is the only thing that peaks your curiosity."
Laptop is an undescribed object on the desk.
The description of laptop is "It's a medium sized silver laptop with a lot of silly stickers plastered on top. It's amazing how many of these were able to survive being transferred between the old one and the current one."

[puzzles, door, chair, laptop]
Carry out taking:
	if taking pillow:
		say "you grab the small purple pillow from the pile. Maybe you can use this later.";
		Now player has pillow.
		
Instead of unlocking bedroom door:
	if player does not have pillows:
		say "You're just too short to reach the doorknob. Maybe there's something you can stand on.";
	otherwise:
		if player has pillows:
			say "You place the pillow on the side of the door, and stand on top of it. You're able to reach the doorknob and open the door to the hallway.";
			now bedroom door is unlocked.
			
Instead of using desk:
	say "You can't reach it wihtout the chair."
			
Carry out sitting:
	If player is sitting on chair:
		say "You hoist your body onto the seat and get on the chair. You reposition yourself so you're facing the desk.";
		Now player is on Chair.
	
Instead of using laptop:
	if player is not on chair:
		say "You need to be able use to reach the desk first. Maybe use the chair in front of the desk.";
	otherwise:
		if player is on chair:
			say "You open up the laptop and turn it on. It is just a bit slow like the human says it is, but it's still perfectly functional.[line break] You find yourself fumbling on here for hours.[paragraph break] 
		You don't know how it happened, but you end up watching an hour long deep dive video about a long gone childrens game. Time was lost to you."
		
After using laptop:
	Now time of day is 3:00 PM.
	
Part 3 - halls and roommates rooms	

[Halls]

Hallway is north of bedroom door. "[first time] Yup, its a hallway. There's a beam in the middle of the space. Someone could run into that! [only] You can go west to the area of Skull Kid's room or east to where the living room and Monster Kid's room are."

Path 1 is west of hallway. "Skull Kid's room is to the south.  The Human's room, Monster Kid's room and the living room are east of here."

Path 2 is east of hallway. "Monster Kid's room is south. The living room is north of here."

[The only thing in Monster Kid's room]

Monster Kid's Room is south of Path 2. "[first time]It's pretty bare bones. There's a few scary looking monster figures on the dresser and the windowsill, fake plants are scattered around as well. [only]The odd looking spinny chair does catch you eye though, you don't know why you walked in here... The halls are north of here."

Spinny Chair is an enterable scenery supporter in Monster Kid's Room.
Description of Spinny Chair is "Its a large black chair that looks way different then the others in the apartment. It looks as if it could spin."
[WHY IS THIS BROKEN NOW?!!]
Carry out sitting:
	If player is sitting on Spinny Chair:
		say " It appears this chair caught your attention, it's different the one the human has. With nothing better to do you climb onto this special chair. It spins slightly in your struggle to get up. You wonder what that could mean.";
		Now player is on Spinny Chair.		
Understand the command "spin" as something new. Understand "Spin[something]" and "Spin in [something]" as spinning.
Spinning is an action applying to one thing.

Instead of spinning:
	If player is not on Spinny Chair:
		say "Why would you need to spin right now?";
	otherwise: 
		if player is on Spinny Chair:
			say "You use your long plush tail to get the chair to move. It starts spinning. Faster and faster you feel the forces hit your plastic eyes. You've never felt more alive in your life. You keep the momentum up until you feel dizzy."
			
After spinning in Spinny chair:
	Now time of day is 12 PM.
	
Part 4 - Mini Skull Kid part
[Skull kid Room]

[set up]
Skull Kid's Room is south of path 1. "[first time] It's full of skull and meme memorabilia. Whatever a 'meme' is you don't know. [only] There's a few of your stuffed friends on the bed in here. The hallway is north of here."

Skull Kid's Bed is an enterable scenery container in Skull Kid's room.

Understand the command "nap" as something new. Napping is an action applying to one thing. Understand "nap [something]", "nap in [something]", "sleep[something]", and "sleep in [something]" as napping.

Getting on is an action applying to one thing. Understand "get on [something]", "getting in[something]", "enter[something]", and "jump on[something]" as getting on.

Description of Skull Kid's Bed is "The bedding is black with white skulls, and has red sheets underneath. Of all the plushies that reside on top when Skull Kid is gone, Dog Boy, the rotund golden retreiver, is the one you talk to the most. This seems like a good place to take a nap."

Dog Boy is an undescribed object in Skull Kid's Room. 

The description of Dog Boy is "It's the rotund little golden dog Skull Kid seems to be amored with. Dog Boy has carried similar personality traits as a result. At least he's fun to talk to."

[actions]
Report talking to Dog Boy:
	say "OH HAI ROCKY! [paragraph break] Did you know that there's many hidden treasures within sea?! Someday when I get bigger, I'll be on a ship and go find them! I'll be the first puppy to find treasure! I hope they have gold.. MAYBE golden coins! With the skulls on them! Did you know that crabs live on the sea floor? They're quite mean though.. They pinch! I miss the beach and being able to smell the salty water. Do you think my human will bring me back there? I hope so! I really hope! :D[paragraph break]  (this goes on for some time)";
	Now time of day is 1 PM.

Carry out entering:
	If entering Skull Kid's bed:
		say "You manage to hop ontop of Skull Kid's bed. It feels more comfortable to take a nap on. Maybe it's because Skull Kid is more prone to napping than your human. You want to try it now.";
		move player to Skull Kid's bed, without printing a room description.

Carry out napping:
	if player is in Skull Kid's bed:
		say "You feel your plastic eyes get heavy and you fall asleep. Dreaming stuffed platypus dreams.";
	Otherwise:
		if player is not in Skull Kid's bed:
			say "there's no good place to nap right now."
			
Carry out getting out of:
	if getting out of Skull Kid's bed:
		say "You get off the bed easily. Don't question how you're able to get off this bed quickly instead of your humans. Don't worry about it :)."

After napping:
	Now time of day is 3 PM.
	
Part 5 - The Room where people are living

[things to do- get on couch, watch tv, use ballpit]

[set up]
Living room is north of Path 2. "[first time]It's a wide open space that includes a couch and even at tv! For some reason, there is a ballpit here.[only] The connected kitchen is west of here, and the halls are to the south."

Ballpit is an enterable scenery container in the Living room.
Description of ballpit is "It's a hexagonal pit next to the tv. It's full of colorful plastic balls. The pit even has a hoop! what fun!"
Couch is an enterable scenery supporter in the living room.
Description of Couch is "Its a dark couch that came with the apartment. It's a bit of a mess, but it does look comfortable."
Coffee table is undescribed scenery in the Living room.
Description of Coffee table is "Its a faux wooden table, with metal lining. It's usually a mess with food, gaming stuff, and candy on a coffin shaped tray. it's almost the same height as the couch."
Tv is a scenery object in the living room.
Description of Tv is "Its a large screen at the end of the living room. It's placed on top of a tall shelf. You wonder what would happen if you turn it on."
Tv remote is on the coffee table.
description of Tv remote is "it's a thing rectangle with a lot of buttons. Somehow this turns on the Tv."
Understand "remote" as Tv remote.

Turning on is an action applying to a thing.
Understand "turn on[something]" and "turning on[something]" as turning on.

Playing is an action applying to a thing.
Understand "Play[something]", "play with[something]", and "play in[something]" as playing.

[puzzles]
Carry out sitting: 
	If player is sitting on couch:
		say "It's a lot easy to get onto then the chair. Not only that theres more room for you to stretch! This is awesome! There's a good view of the tv from here, just need to turn it on.";
		Now player is on Couch.
		
Instead of using Coffee Table:
	say "You're better off getting on the couch first."
	
Instead of taking Tv Remote:
	If player is not on couch:
		say "You'd be better off reaching the coffee table from the couch.";
	Otherwise:
		If player is on couch:
			say "You grab the remote off the coffee table. You think this device is what turns on the tv.";
			Now player has Tv remote.
	
Instead of turning on Tv:
	If player is not holding remote:
		say "How would you even turn this on? There must be something you can use on the coffee table.";
	Otherwise:
		If player is holding remote:
			say "You turn on the tv. The screen displays the show Monster Kid watches when the human is trying to sleep. It appear to be a drama about the life of a serial killer. Unfortunately, you get invested."
	
After Turning on Tv:
	Now Time of day is 3 PM.
	
Carry out using:
	if using ballpit:
		say "You hop in the ballpit. It's full of multicolored balls. You have the uge to play inside.";
		move player to ballpit, without printing a room description.		
Carry out playing:
	if player is in ballpit:
		say "You mess around in the ballpit, the texture feels nice against your fur. You even attempt to throw some in the hoop. It's a blast!";
	otherwise:
		if player is not in ballpit:
			say "You need to be inside the ballpit to play with it.";
	Now time of day is 2 PM.

Carry out getting out of:
	if getting out of ballpit:
		say "You hop out of the ball pit. Man! That was fun! Time to do something else.";
		move player to living room, without printing a room description.
		
Part 6 - Whatever happens in the food place
[Kitchen] 

Kitchen is west of the Living room. "It's connected to the wide open space that is living room. The sink has apparently been leaking since you moved in. You don't wanna bother touching the stove. Getting a snack from the fridge sounds good right about now. The living room is to the east."

[set up]
Fridge is an undescribed openable container in the kitchen. 
Fridge is closed.
Snacks are an edible object in the fridge.
Description of the Fridge is " It's the cold place where the food is stored! There's a lot of options between the 3 humans."
Stove is an undescribed object in the kitchen. 
Description of stove is "It's where they cook food. You hear it's super hot. You don't wanna test it."

Sink is an undescribed object in the kitchen.
Description of Sink is "Yup, that's the leaky sink."
Understand "snack" as snacks.

Understand "open[something]" and "open up[something]" as opening.

Understand "eat[something]", "munch[something]", and "crunch[something]" as eating.

[actions] 

Carry out opening:
	if opening fridge:
		Say "You somehow manage to get the fridge open. It's chilly, but an array of choices for you to snack on speak to your nose. Time to get a snack.";
		Now fridge is open.

Instead of taking snacks:
	if fridge is closed:
		say "You'd need to open the fridge first, silly.";
	otherwise:
		If fridge is open:
			say "you take whatever is closest to you in the fridge. Whatever it is, it looks yummy.";
			Now player has snacks.
			
Carry out eating:
	if eating snacks:
		say "you eat what appears to be an apple, some cheese, and some bread (gluten free). You hope the human and her roommates will forgive you for your actions today. In your defense, they were delicious." 

After eating snacks:
	Now time of day is 3 PM.
	
Instead of using Sink:
	say "You don't to make the sink leak even more."
	
Instead of using stove:
	say "You'd burn if you use that."	
	
Part 7 - Ending

At 3:00 pm:
	End the story saying "It's 3pm! The human is home from school![line break]You stop whatever you were doing and go limp. [paragraph break] 'Huh. Looks like you had a fun day.' she says as she picks you up and places you back on the bed. She gently pets you're head before going back to work.[Paragraph break] Today was a good day!" 

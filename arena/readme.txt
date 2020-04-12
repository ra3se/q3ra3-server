Title    		: Rocket Arena 3 Client Readme
Version  		: 1.76 RELEASE
Webpage			: http://www.planetquake.com/arena
Date     		: 2003-07-31
Document author	 	: Patrik 'ElQueffo' Persson, Torkel 'Kebb' Ödegaard
Document version	: 1.3

--------------------------------------
 Document version history
--------------------------------------
2004-04-01
Spelling and 1.76.

2004-03-07
Updated with 1.75 information.

2003-07-31
Updated with 1.7 information.

2003-04-23
1.1 Some minor fixes

2003-04-20
1.0 Initial release.

--------------------------------------
 Introduction
--------------------------------------
Welcome to Rocket Arena 3.
This document will describe how to install and configure Rocket Arena 3 1.75.

--------------------------------------
 New commands since RA3 1.7
--------------------------------------
chname
	Set primary name to current name in the server db on disconnect.

chpass <password>
	Change your password on the current server.

topshots <weapon>
	Where weapon is one of MG, SG, GL, RL, LG and PG.
	Displays the top accuracies for specified weapon.

teamname <name>
	Sets the team name. Compmode and team captains only.

+vstr <downcmd> <upcmd>
	When bound to a button: execute downcmd when button is pressed and upcmd when released.

specwho
	List players currently invited as spectators.

specrevoke <id>
	Remove someone from the allowed spectator list.

aliases <id>
	List the 10 last aliases used by this player. Only works on PB enabled servers with g_trackPlayers 1.

timeout
	Call a timeout.

timein
	Call a timein.

cg_connectionIcon <0|1>		(default = 1)
	Show (1) or hide (0) the connection problem icon above peoples heads.

cg_forceSkins <0|1>	(default = 1)
	Should always be 1! If set to 0 skins will not work correctly.

cg_teamRail <0|1|2|3:0|1|2|3>	(default = 0:0)
	Team colored rails. 0:0 to disable. 1-3 represents the bodypart to take the colour from if cg_customColors is 1.
	Example: 1:3 means take rail core color from head color and 'swirl' color from legs.

s_useClick <0|1>		(default = 0)
	Disable (1) or enable (0) the 'use sound'.

cg_cc2DIcons <0|1>		(default = 0)
	Use the custom colors for UI elements.

s_ambient <0|1>			(default = 1)
	Disable (0) or enable (1) ambient sounds.

cg_noBodies <0|1>		(default = 0)
	Hide (1) or show (0) dead bodies.

cg_autoAction <value>		(default = 0)
	The value is a bitfield. (For more information on bitfields see description in the cg_noMip section below.)
		1 AUTO_DEMO_MAP - Record demo for each map.
		2 AUTO_DEMO_MATCH - Record demo for each match.
		4 AUTO_SS_MAP - Take screenshot for each map.
		8 UNUSED
		16 AUTO_SS_JPG - Use JPG screenshots.
		32 AUTO_DEMO_COMPONLY - Only record in competition mode.
		64 AUTO_SS_COMPONLY - Only take screenshot in competition mode.

cg_scoreBoardStyle <value>	(default = 2)
	The value is a bitfield. (For more information on bitfields see description in the cg_noMip section below.)

		1 SB_OLDSTYLE - Old scoreboard.
		2 SB_NEWSTYLE - New scoreboard.
		4 SB_NEWPING - More ping colors.
		8 SB_NEW_ORDER1 - Column order 1 for SB_NEWSTYLE.
		16 SB_NEW_ORDER2 - Column order 2 for SB_NEWSTYLE.

--------------------------------------
 New commands since RA3 1.65
--------------------------------------

cg_customColors <0|1>		(default =  0)
	If set to 1 custom colors will be used when players are rendered. You can set
	what color is to be used for enemy and team players with the cg_enemyColor/cg_teamColor variables.

cg_enemyColor <HEAD:TORSO:LEGS>	(default = FF0000:FF0000:FF0000)
	Defines the color of your enemy in hex numbers. format is HEAD:TORSO:LEGS,
	example 00FF00:00FF00:00FF00 for a green dude.

cg_teamColor <HEAD:TORSO:LEGS>	(default = 0000FF:0000FF:0000FF) 
	Defines the color of your team members in hex numbers. 
	example 00FF00:00FF00:00FF00 for a green dude.

cg_enemyModel			(default = '')
	Set this to the prefered model you want for your enemies.

cg_teamModel			(default = '')
	Set this to the prefered model you want for your team members.	
	
cg_noMip <value>		(default = 0)
	the value is a bitfield.
		1 NOMIP_LG
		2 NOMIP_RL
  		4 NOMIP_GL
 		8 NOMIP_PG
 		16 NOMIP_RG
  		32 NOMIP_BFG
  		64 NOMIP_PLAYERS
  		128 NOMIP_BLOODTRAIL
  		256 NOMIP_FLOATICONS
	Example: LG+RL+PG+BFG = 1+2+8+32 = cg_noMip 43
	This will disable mipmapping for these weapons.
	This command requiers a vid_restart to take effect.

cg_eorColor <hexvalue>		(default = 0000FF)
	Sets the background color the end-of-round window. 
	
cg_statsColor <hexvalue>	(default = 0000FF)
	Sets the background color the stats window.
	
cg_eorPos <XPos:YPos>		(default = 5:122)
	sets the position of the end-of-round window.

cg_statsPos <XPos:YPos>		(default = 178:302)
	sets the position of the stats window.

teamlock (Team captains only, competition mode only)
	Lock the team to prevent anyone from joining.

teamunlock (Team captains only, competition mode only)
	Unlock the team so that players can join.

teamcaptain <ID>
	Appoint a new team captain (Team captains only, competition mode only) or
	display the current team captain.

teamkick <ID> (Team captains only, competition mode only)
	Kick a player from the team, leave out the id to list players in the team.

teammute (Team captains only, competition mode only)
	Mute the team. Only the team captain can use say and say_world, all other players
	are limited to say_team.

teamunmute (Team captains only, competition mode only)
	Unmute the team. All players can chat normally.

cg_blood <1|0>			(default = 1)
	This was com_blood, turns blood on or off.

refpaks
	Pakfiles in use by the server, you can use this command to see if the server is using
	any special paks such as custom skins or models.

cg_drawTime <1|0>		(default = 0)
	Draw the current time in the upper right corner.

next_map
	Show the next map in the servers maploop and time left until timelimit.


--------------------------------------
 New commands since RA3 1.5
--------------------------------------

cg_showPlayerLean <0|1>
	If set to 0 no player leaning is shown.

cg_noProjectileTrail <1|0>	(Default = 0)
	When this is set to 1 it removes all smokepuffs from rockets. A side effect is that 
	it also removes blood trails from gibs. 

cg_crosshairColor <value>	(default = white)
	This variable sets the color of the crosshair.
	value can be set to red, green, blue, magneta, cyan,ltgray, mdgrey, dkgrey.
	value can also be a costum color described in hex in 0xRRGGBB format.
	For example 0x00FF00 for green color.

cg_crosshairStats <1|0>		(default = 1)
	When set to 1 Armor and Health is displayed for the teammate your crosshair is pointing at.
	
cg_oldLightning <1|0>		(default = 0)
	Use either the new (0) or old (1) lightning gun effects.

cg_oldRail <2|1|0>		(default = 0)
	The default is to use the 1.32 rail with 'swirl', if you want the new rail but without the swirly part, set this to 1.
	If you want to revert completely to the ra3 1.5 rail, set this to 2. You can control the core and swirl colors by setting
	color1 and color2 respectively.

cg_roundOverlayTime <value> 	(default = 3000)
	With this variable you can set how long the "Damage taken" and "Damage given" windows stay visible after each round.
	The default value is 3000 which equals 3 seconds. If you want to disable the auto showing of these windows set this to
	0 and they will not appear. You can display these windows at any time with +rstats.

cg_oldTrueLightning <0|1>	(default = 0)
	If you set this to 1, cg_trueLightning will behave like in RA3 1.5. If you set it to 0 it will behave in the "new" way.

cg_trueLightning <0.0-1.0|(0|1)>
	Depending on your cg_oldTrueLightning setting this will behave differently. It will allow you to set a value between 0.0 and 1.0
	if you set cg_oldTrueLightning to 0, otherwise it will only allow 0 or 1 as in RA3 1.5.
	I recomend you experiment to see what you like best.

players 
	This command list all players connected to the server and there client number. Usefull if you want to know
	clientnumber for /callvote kick <clientnum>, or for /specinvite <clientnum>

specinvite <id>
	This command only works in competition mode. If you want someone to be allowed to spectate your team, use specinvite <id>.
	You can get the id of a specific player with the players command. All invites are reset if someone leaves your team.

ignore <id>
	This command allows you to ignore chat messages from certain players. To find out what id someone has, use the players command.

+stats <0|1>			(default = 0)
	Bid this to a key to show the stats window while you hold down a key. Parameters to this command work as follows:
	0: The stats window will show the statistics of whoever you are spectating, if you arent spectating anyone it'll show your stats.
	1: The stats window will always show your stats, never the stats of someone you are spectating.
	If you don't pass any parameters to the command it defaults to 0.

+rstats
	This command will show the round statistics (ie the "Damage given" and "Damage taken" windows) while you hold down a key.
	The upper part of the "Damage taken" window shows you information about the player who killed you (how much health and armour
	he had and how much damage he did to you and so on) and the lower part lists all players that inflicted damage to you during 
	the round. The "Damage taken" window lists all players that you hit.

Chat escape sequences
	Some special character sequences will be substituted for useful information in the teamchat:
	\l - Your location
	\g - Who you damaged/shot last
	\t - Who damaged/shot you last
	\k - Who you killed last
	\p - The location you are pointing at

--------------------------------------
 Installation
--------------------------------------
* Upgrade from 1.65 or earlier
 To upgrade from an older version you must either upgrade version by version from your version or download the full installer or zip.

* Upgrade from 1.7 (installer, windows)
 To upgrade using the installer (ra3175clup.exe), just select your Quake III Arena directory (not the arena subdirectory) in the installer 
 and it will do everything automatically for you. 
 NOTE: Uninstalling will completely remove your arena/ directory!

* Upgrade from 1.7 (zip file, linux & mac)
 1) Unzip to your Quake III Arena directory overwriting existing files.
 
* Full install (installer, windows)
 Please delete your arena/ directory before installing.
 To install, point the installer to your Quake III Arena directory (not the arena subdirectory) and the installer will do everything
 automatically for you.
 NOTE: Uninstalling will completely remove your arena/ directory!

* Full install (zip file, linux & mac)
 Please delete your arena/ directory before installing or you might experience some odd problems.
 Unzip to your Quake III Arena directory (not the arena/ subdirectory), the arena/ directory will be created for you.


--------------------------------------
 Game Overview
--------------------------------------
Rocket Arena matches are played in "arenas." Each map may have one or more arenas
in it. When you connect to a server, you need select an arena and then
either create or join a team.
Once you are in the arena you will be put in line to fight. See below for 
more specific instructions.


--------------------------------------
 Navigating the Menus
--------------------------------------
The menus are controlled by the mouse and are quite easy to use. You can always
use the "ESC" key to bring up or hide the menu.


--------------------------------------
 How to Play
--------------------------------------
When you first join a server you will be presented with a list of the Arenas on the map.
Each map can have many arenas (most have 4-5). Each arena can have different games going on
in it at the same time, and you can switch between arenas at any time.

The list will tell you the number of people in each arena and the game type being played in
that arena. Rocket Arena 3 has 4 different types of games that can be played, see the section
below on game types for more info.

Once you select an arena you will then be asked to either join a team or
create a new one. Some game types do not allow you to create your own team.

If the team status is "FULL" you can't join that team, select another or create your own.


--------------------------------------
 Game Types
--------------------------------------
Rocket Arena 3 has 4 different types of games. By default, most servers will only be
running arenas as "Rocket Arena" or "Clan Arena", but you can vote to change game types
at any time.


--------------------------------------
 Gameplay in a Rocket Arena
--------------------------------------
Once in the arena waiting area, you will wait in line for your chance
against the champion(s). The winning team stays on the battleground until it
is defeated. 

When you enter the arena, a 5 second countdown will begin.

You will automatically be given whatever health/armor/weapons/ammo are configured
for that arena. The members of the other team are given the same.

Now you fight.

When all members of one team are dead, the other team is declared the victor.  
If all members of both teams die, a tie is declared and the teams re-enter the arena.

You can optionally vote to turn on rounds in the arena. With rounds on matches
are played in a best X/Y  fashion (2/3, 5/9, etc) with the winning team staying and
the losing team going to the back of the line.

Note that you can always tell your TEAM color by looking at the color of your status
bar. The winning team is always red, the challenging team is always blue.


--------------------------------------
 Gameplay in a Clan Arena
--------------------------------------
After joining a Clan Arena you will be giving a choice of two teams to join. Pick a
team (generally the one with less players) and you will be placed in the arena as an observer. 
A match will probably already have started, and you can watch until the current round is over.
Once the round is over you will be placed in the arena.

Kill everyone on the other team. (you can look at your status bar if you forget what team
you are on)

When you die you will be placed in observer mode and allowed to watch the rest of the
round. Feel free to cheer for your teammates, but please do not give out health numbers!

Last team standing wins the round. Matches are usually played in matches of (up to) 5,9,
or 11 rounds with a break in-between matches. Use the break to vote for changes
or switch teams if they become uneven (to switch teams, leave the team you are on and join
the other).


--------------------------------------
 Gameplay in a Red Rover Arena
--------------------------------------
Red Rover is an interesting game that, while it involves teams, is actually an individual
event. The winner is decided as the player with the most total frags at the
end of the round.
When you join a Red Rover team you'll be placed into the arena immediately. You should start
shooting the other team. Each time you kill someone on the other team they will be placed on
your team and you will gain a frag. Each time you are killed you are placed on the other team
and a frag is subtracted. The goal is kill as many people as possible. Eventually all the 
players will be on the same team and the round will be over. The person with the most frags
wins, and then the scores are cleared and it starts over.
Unlike the first two arena types, there is NO waiting in Red Rover -- you are always playing.

Be sure not to get too attached to your team, one second they are teammates, the next they are
enemies. Remember that this is an individually-scored game. Your goal is to kill as many enemies
as possible while avoiding dying.


--------------------------------------
 Gameplay in a Practice Arena
--------------------------------------
Practice Arena is designed to allow players to practice various skills (like weapon combos,
rocket jumps, and rail shots) with other players, without actually killing anyone. Scoring
is based on damage done, and the game doesn't "end" until the map changes. You have unlimited
ammo with all the weapons that are available in that arena and you can't die unless you fall
off the map or into certain areas. If you get into an area (like lava) that you can't get out
of, just type "kill" at the console to respawn.


--------------------------------------
 Observer Options
--------------------------------------
When you are waiting in line or after you die you'll be placed in observer mode.
You can use the FIRE button to cycle through the different observer modes:
-Freeflying: You can move around the map freely
-Trackcam: You get a 360 degree movable camera around your target
-Eyecam: You see what your target sees

You can use the JUMP button to cycle through targets when in Trackcam or Eyecam mode.

If the arena you are in is set to competition mode, you can only spectate using the eyecam mode and you can only
spectate the members of your own team (with one exception, see below).
If you have been invited using the specinvite command you can also spectate the members of that persons team.
Example: You are on the red team, Joe is on the blue team. Joe uses the players command to find what id you are and then 
types specinvite <id>. You can now specate the members of Joes team.

You can use the ESC menu to bring up the in-game menu.

"Leave Arena": This will remove you team from the current arena and place you
back at the arena selection menu. 

"Leave Team": You will be removed from your team and placed at the team selection menu.
If you are the only person on your team, it will be cleared.

"Change Arena Settings": You can propose changes to settings such as: health, armor,
players per team, and weapon mix. Other settings (such as ammo amounts and self
damage) are only configurable by the server op.

"Vote on Changes": When changes have been proposed you will be given notice and can
come here to view/vote on the changes. For a vote to pass, the formula is:
passed = (yes votes - no votes) > 1/3rd total possible voters
The one exception to this is "Lock Arena", which locks the arena so that other players
can't join. This is useful for playing clan matches on public servers. In order to lock
an arena you must have at least 6 players and EVERYONE must vote yes. Any no votes or
people not voting will cause the vote to fail.

Hitting ESC again will remove the menu.


--------------------------------------
 Global Server Voting
--------------------------------------
The "callvote" console command is still present and can be used for server-wide voting
(the menu voting is just for individual arenas).
The callvote commands available are:
"callvote kick <name>" to vote to kick a player. Note that you can also just type
"callvote clientkick" to get a list of players with numbers, then type
"callvote clientkick <number>" to kick by number. This helps kick people with weird names.
"callvote nextmap" will skip to the next map
"callvote map_restart" will restart the current map
"callvote map <map>" will load the map named <map>
A vote will only pass if a certain percentage of the players on a server vote yes (configurable by the administrator).


--------------------------------------
 Sending Messages
--------------------------------------
The default messagemode1 (T key, "say" at console) will only send messages to your
arena. All spectators and players will hear them. If you are in the main waiting
arena, it will be broadcast to the whole server. 

The default messagemode2 ("say_team" at console) will send messages to your teammates,
but only if they are in the same state (playing or observing) as you 
(i.e. spectators can't send team messages to teammates that are playing, but two teammates
 playing can communicate this way)

"say_world <message>" at the console will send a message to the entire server.
World messages are prefixed with a [world]
When replying to a world message, make sure you use say_world, or your intended recipient
might not hear you (if they are in another arena).
There is no way to bind say_world to a key due to Q3 limitations.

There is a chat flood protection system in RA3, the server administrator decides how many lines you can say in how many seconds
and how many times you can trigger the protection before being kicked off the server. The flood protection is off for team chat
in clan arenas if competition mode is enabled.


--------------------------------------
 Grapple
--------------------------------------
Rocket Arena 3 has the normal id grapple as an option for admins to turn on.
It's not suggested for most servers and has not been tested on the RA3 maps.
To select the grapple (if enabled) bind a key to "weapon 0"


--------------------------------------
 In Game Administration
--------------------------------------
See the server readme (readsrv.txt) in the server files for In-Game admin info.


--------------------------------------
 Other Misc Info
--------------------------------------
Make sure your "com_hunkmegs" setting is at least 56 (type com_hunkmegs at the console
to check it). Lower numbers may cause maps to fail to load. More is better if you've got
lots of memory.


--------------------------------------
 Troubleshooting/FAQ
--------------------------------------
If you don't find an answer here PLEASE READ THE REST OF THE FILE!

Q: I get a "client/server game mismatch" when connecting to an RA3 server.
A: Either the server is not configured correctly, or your files
are not installed correctly. Try reinstalling RA3. Make sure the installer is pointed
at your Quake 3 directory (the directory where Quake3.exe resides).
Also, make sure you have the latest version of RA3.
Also, make sure there are no .dll or .so files in your arena directory.
Also, make sure "com_hunkmegs" is at least 56 (higher is fine if you have at least 128mb).

Q: When loading a map it drops me back to the main menu.
A: There are many different reasons this can happen. You need to drop down the
console (~ key) and scroll up (PGUP key) until you see an ERROR message. Typical reasons
for this is #1 above, not having enough memory (see below about com_hunkmegs), having
corrupt files, or an outdated version.

Q: Is it cheating to give out the other team's health numbers to my teammates?
A: YES. YES it is. So don't do it. We left in the ability for observers to talk to
 players, so please don't abuse it. It was left in so that observers can cheer
 for their teammates and encourage them, not so they can help their teammates cheat.
 Giving out health numbers ruins the suspense and strategy of the game. So just don't do
 it. You wouldn't like your health given out, so don't give out other peoples'. End of 
 subject. This discussion is closed. There is a competition mode that can be voted on for
 clans that play competitively. This mode prevents players from tracking the other team or
 seeing their health.

Q: Is using the BFG Cheating?
A: If the BFG is turned on, it is not cheating to use it.
 The BFG is off by default and can only be turned on by the server admin or by voting.
 Please don't annoy people by voting repeatedly to turn it on or off.

Q: How do I make a Rocket Arena 3 map?
A: The Rocket Arena 3 maps specs are available on the Rocket Arena 3 page.

Q: Where is the MP3 player?
A: The MP3 player had to be removed because of pb compability issues and cheat issues.

Q: Where is the IRC client?
A: The IRC client had to be removed because of pb compability issues and cheat issues.

Q: I've got some menu or something, what do I do?
A: You read the rest of this file!

Q: Why is Uncle Sam flashing me?
A: That means a vote is in progress, use the in-game menu to vote (press ESC)

Q: I get an error message that says "UPGRADE NOW" when I connect to servers?
A: Make sure you are running the latest version of RA3 and the latest version of Quake 3.
It may help to reinstall the latest Q3 point release and latest RA3 release.

Q: When i connect it says "Version mismatch CX.XX/SX.XX"
A: You need to have the same version of RA3 as the server you are connecting to.
   Also make sure RA3 is loaded before you connect, you can ensure this by starting Quake 3 with +set fs_game arena
   or loading RA3 through the mods menu before connecting.

Q: When i connect the server says something about needing a updated game patch.
A: This means you either have a old version of Quake3 or don't have punkbuster enabled when trying
to connect to a punkbuster enabled server. First try pb_cl_enable and/or cl_punkbuster 1 and then
try installing a newer version of Quake3.

--------------------------------------
 Code Credits
--------------------------------------
1.5 and earlier versions:
David 'crt' Wright

1.6 and newer:
Patrik 'ElQueffo' Persson
Torkel 'Kebb' Ödegaard
Daniel 'Dariddler' Johansson

--------------------------------------
 Map Credits
--------------------------------------
The Rocket Arena 3 map team did an amazing job on these levels. Feel free to
e-mail them with your questions/comments.

ra3map1
Till "Firestarter" Merker
firestarter@planetquake.com
http://www.planetquake.com/oxymoron5

ra3map2
Adam "Senn" Bellefeuil
senn@qeradiant.com
http://www.planetquake.com/senn

ra3map3
John "Hal9000" Schuch
jschuch@ea.com
http://www.whatthehal.com

ra3map4
Scott "Deathstalker" Maclean
deathstalker@planetquake.com
http://www.planetquake.com/mahq

ra3map5
James "Suicide-20" Canady
suicide20@planetquake.com
http://www.planetquake.com/3

ra3map6
Mackey "Avatar" McCandlish
avatar@yossman.net
http://avatar.telefragged.com and http://www.zeroping.com/targetquake 

ra3map7
Dan "Inflict" Haigh
Inflict@serpent.globalnet.co.uk
http://www.planetquake.com/inflict

ra3map8
John "Hal9000" Schuch
jschuch@ea.com
http://www.whatthehal.com

ra3map9
Mike "g1zm0" Burbidge
mikeburb@home.com
http://www.members.home.net/mburbidge/
http://www.planetquake.com/3/

ra3map10
David "Anubis" Rotramel
anubis@thecurse.com
http://www.thecurse.com

ra3map11
David "SgtGhost" Levesque
sgtghost@hotmail.com
http://www.planetquake.com/mahq
Wiebo de Wit
wiebo@planetquake.com
http://www.planetquake.com/wdw 

ra3map12
Till "Firestarter" Merker
firestarter@planetquake.com
http://www.planetquake.com/oxymoron5

ra3map13
David "SgtGhost" Levesque
sgtghost@gamespyarcade.com
www.planetquake.com/mahq

ra3map14
Dan 'MountinYew' Slater
dslater2@swbell.net

ra3map15
Justin 'StormShadow' Ingels - stormshadow@planetquake.com 
www.planetquake.com/stormshadow
James 'Moze' Phillips - Moze@Charter.net
Dave 'Burnz' Webb - treetechoftulsa@cox.net

ra3map16
Jamin 'Sub-Zero' Bulyk
subz3r0@hotmail.com

ra3map17
Justin 'StormShadow' Ingels - stormshadow@planetquake.com 
www.planetquake.com/stormshadow

ra3map18
Jarret a.k.a. 'meso'
ra3mapproject@hotmail.com

--------------------------------------
 Soundtrack Credits
--------------------------------------
Rocket Arena 3 has an awesome 14 track soundtrack available as a separate download.
Here are the artists that make up the full soundtrack:
All Systems Are Go
Masada (Mathias Westin and Torsten Edwinson)
masada@trance.net
http://www.trance.net/masada

Judge Dredd
The Dead Guys (Peter Aid & Tomas Nystrom) Original Artist: Neil Brennan 
drdoom@thedeadguys.com
http://www.thedeadguys.com

Alienation
James Grote
Knife@SongsForDeathmatch.com
http://www.songsfordeathmatch.com

Replicator
Sonic Mayhem
cyberage@he.net
http://www.sonicmayhem.com

Mars Meteorite
scoTT "piLL" mCCaLL
pill@atomic3d.com
http://www.mp3.com/pill

Backflash
Silent Warrior
silentwarrior@skinjob.net
http://www.populationcontrol.com/silentwarrior http://www.mp3.com/silentwarrior

Inque
Dj Eleven (Jack J. Alley)
eleven11@mediaone.net
http://people.mw.mediaone.net/eleven11 http://www.mp3.com/11eleven 

Simulant
Silent Warrior
silentwarrior@skinjob.net
http://www.populationcontrol.com/silentwarrior http://www.mp3.com/silentwarrior

Ultra-Violence
Upbeat Depression (John Vincent De-Witt)
epsylonic@hotmail.com
http://www.mp3.com/UpbeatDepression

Descent of an Empire
Assault Plague: 7 (John Jeffries and John Mattinlgy)
raistlin@neo.rr.com
http://www.mp3.com/assaultplague7

Crush
St. Vitus Dance
mindyourselfmusic@home.com
http://www.variousdemons.com/stvitus

Abscence Of Mind
Masada (Mathias Westin and Torsten Edwinson)
masada@trance.net
http://www.trance.net/masada

Earthman
scoTT "piLL" mCCaLL
pill@atomic3d.com
http://www.mp3.com/pill

Razor Edge
James Grote
Knife@SongsForDeathmatch.com
http://www.songsfordeathmatch.com


--------------------------------------
 Availability
--------------------------------------
This modification is available from the following places:
http://www.planetquake.com/arena


--------------------------------------
 Copyright and Distribution Permissions
--------------------------------------
This mod is freely distributable provided that this readme is distributed
as well and is unchanged.

All code is Copyright David Wright 2000.
Rocket Arena is a registered trademark of David Wright
Commercial code licensing is available by contacting wrightd@gamespy.com

DISCLAIMER: THE PROGRAM IS DEFINED AS THE QUAKE 3 MOD "ROCKET ARENA 3" AND
  ALL FILES CONTAINED WITHIN.
  BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
  FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
  OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
  PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
  OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
  TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
  PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
  REPAIR OR CORRECTION.

Quake 3: Arena© is copyright ©1999/2000 Id Software, Inc. Quake© is a
registered trademark of Id Software. Quake 3™, the Id Software name are
trademarks of Id Software, Inc.
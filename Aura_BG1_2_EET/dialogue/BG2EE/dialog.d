BEGIN BC0AURA2
BEGIN C0AUR25J
BEGIN C0AURA2J
BEGIN C0AURA2
BEGIN C0AURA25
BEGIN C0AURA2P
BEGIN C0AUR25P
BEGIN C0AU01TK
BEGIN C0ATHF1
BEGIN C0ATHF2
BEGIN C0ATHF3
BEGIN C0ATHF4
BEGIN C0AGOL02
BEGIN C0AGOL03
BEGIN C0AKOKO
BEGIN C0APICO
BEGIN C0AMAGN
BEGIN C0ABOOK3
BEGIN C0AREES
BEGIN C0AASCL
BEGIN C0AASCS
BEGIN C0AQMAN
BEGIN C0AQDAD
BEGIN C0AQTHF
BEGIN C0AQINSP
BEGIN C0AQINS2
BEGIN C0AQINT1
BEGIN C0AQINT2
BEGIN C0AQINT3
BEGIN C0AQMON1
BEGIN C0AQMON2
BEGIN C0MUFFY2
BEGIN C0TAMIA
BEGIN C0KORSH
BEGIN C0KORSHB
BEGIN C0DEDAL
BEGIN C0AKID1
BEGIN C0AKID2
BEGIN C0AKID3
BEGIN C0AKID4
BEGIN C0AFIR01
BEGIN C0AFIR05
BEGIN C0AFRITZ
BEGIN C0AEX1
BEGIN C0AUKARI
BEGIN C0AYUKI
BEGIN C0AICE01
BEGIN C0AJUNO
BEGIN C0ALUNA
BEGIN C0CARNIF
BEGIN C0AGNO03
BEGIN C0AGNO04
BEGIN C0AGNO05
BEGIN C0AGNO06
BEGIN C0AMISC8
BEGIN C0AUSPE1
BEGIN BC0AUR25
BEGIN C0AU25WR
BEGIN C0ACERI
BEGIN C0ACERI2
BEGIN C0LIRO
BEGIN C0LIRO2
BEGIN C0AUIMIX

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBImixAngry","GLOBAL",1)~ THEN C0AUIMIX IMIX
~YOU...! You carry the stolen essence of my foolish, dead spawn! You shall pay in kind with your divine blood, godling!~ [C0BLANK]
DO ~SetGlobal("C0AuraToBImixAngry","GLOBAL",2)
ReallyForceSpell(Myself,WARRIOR_HARDINESS)
ReallyForceSpell(Myself,WARRIOR_GREATER_WHIRLWIND)
ReallyForceSpell(Myself,WARRIOR_CRITICAL_STRIKE)
ReallyForceSpellRES("C0AQEF12",Myself)~ EXIT


CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN C0AMISC8 SUNSHOOTERLENS
~Attach the lens to the Sunshooter?~ [C0BLANK]
END
+ ~HasItem("c0amisc8",Myself)~ + ~Attach Precision Lens~ DO ~
EquipMostDamagingMelee()
SetInterrupt(FALSE)
PlaySound("C0AUBOW")
DestroyItem("c0amisc8")
ApplySpellRES("C0AQEF26",Myself)
EquipRanged()
SetSequence(8)
SetInterrupt(TRUE)~ EXIT
++ ~Exit~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("C0KokoGiveFish","GLOBAL",2)~ THEN C0AKOKO a1
~*meow*~ [CAT01]
= IF ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ THEN ~(The cat brushes itself against your feet.)~
END
+ ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ + ~What's up, are you hungry? Do you want food?~ EXTERN C0AKOKO a1.2
+ ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ + ~Go away. I don't have anything for you right now.~ EXTERN C0AKOKO a1.2
+ ~!IsGabber("C0Aura")
InParty("C0Aura")
!Dead("C0Aura")
Range("C0Aura",15)
!Global("C0AuraKnowBG1","GLOBAL",1)
Global("C0AuraBG1Koko","GLOBAL",0)~ + ~Hey... isn't this the cat that accompanied you to Dragonspear Castle?~ DO ~SetGlobal("C0AuraBG1Koko","GLOBAL",1)~ EXTERN C0AURA2J a1.1
+ ~!IsGabber("C0Aura")
!InParty("C0Aura")
!Dead("C0Aura")
Range("C0Aura",15)
!Global("C0AuraKnowBG1","GLOBAL",1)
Global("C0AuraBG1Koko","GLOBAL",0)~ + ~Hey... isn't this the cat that accompanied you to Dragonspear Castle?~ DO ~SetGlobal("C0AuraBG1Koko","GLOBAL",1)~ EXTERN C0AURA2P a1.1
IF ~~ EXIT

CHAIN C0AURA2J a1.1
~Yep! Koko-chan came back to me after, well... everything that happened after we beat the crusade. I guess we've formed a bond with the time we spent together.~
= ~He seems to really like this workshop, so I leave him here and let him do what he likes. Sometimes he goes downstairs to chase mice around the house, but I don't think Tat's kitty likes him very much.~
END
IF ~Global("C0KokoGiveFish","GLOBAL",1)~ EXTERN C0AKOKO a1.2
IF ~!Global("C0KokoGiveFish","GLOBAL",1)~ EXIT

CHAIN C0AURA2P a1.1
~Yep! Koko-chan came back to me after, well... everything that happened after we beat the crusade. I guess we've formed a bond with the time we spent together.~
= ~He seems to really like this workshop, so I leave him here and let him do what he likes. Sometimes he goes downstairs to chase mice around the house, but I don't think Tat's kitty likes him very much.~
END
IF ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ EXTERN C0AKOKO a1.2
IF ~OR(2)
!Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerNotExpired("C0KokoGiveFishTimer","GLOBAL")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",1)~ THEN C0APICO begin.0
~Aha! There you are, you little rascal!~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",2)~
== MAJAN IF ~InMyArea("MAJAN")
!Dead("MAJAN")~ THEN ~Goodness me! Is that cat out and about again? I thought I saw something bolting out of the door a moment ago.~
== C0AKOKO ~*meow!*~ [CAT01]
END
++ ~I presume this cat belongs to you?~ EXTERN C0APICO begin.1
++ ~Keep this stupid pest under control next time!~ EXTERN C0APICO begin.1

CHAIN C0APICO begin.1
~I am so, so sorry, <PRO_SIRMAAM>! He's always trying to escape...~
== C0AKOKO ~*mee-ow!*~ [CAT01]
== C0APICO ~Five times a day. Five. Times. A day! If you're not trying to jump out the window, you're managing to pick the latch open and climb down the ladder. How do you even manage that without opposable thumbs?~
== C0AKOKO ~*yawn*~ [CAT01]
== C0APICO ~Ooh, just you wait until your owner comes back. *ahem* Beg pardon, <PRO_SIRMAAM>, I'll take him back now.~
END
++ ~Don't worry about it..~ + begin.2
++ ~I've seen this cat somewhere before...~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + begin.2
++ ~Just get the creature away from me.~ + begin.2

CHAIN C0APICO begin.2
~I'll just take him off your hands... bad cat! Now open your mouth... there we go. No more running around with copper wires either, okay?~
== C0APICO IF ~InMyArea("MAJAN")
!Dead("MAJAN")~ THEN ~I'm so sorry for the noise, auntie.~
== MAJAN IF ~InMyArea("MAJAN")
!Dead("MAJAN")~ THEN ~No trouble, dearie. You go on back inside.~
== C0APICO ~Right, now you're going to get a big scolding once miss Aura gets back home! Come on, back to the workshop, Koko, skedaddle!~
DO ~SetGlobal("C0AuraBegin","GLOBAL",2)
	TakePartyItem("C0AUCAT2")
	DestroyItem("C0AUCAT2")
	Wait(1)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("c0acut1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",2)
Global("C0AuraMajanTalk","GLOBAL",0)~ THEN MAJAN MAJANSEN
~Goodness me, the kind of liveliness that comes with having relatives and guests join the household. I'm so sorry for the display, dear. Things usually aren't so loud around here.~
DO ~SetGlobal("C0AuraMajanTalk","GLOBAL",1)~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~Wasn't that cousin Pico, ma? Back from working as a shoesmith over in Eshpurta, I see. And in the workshop, too! I didn't think it was being used when I was away.~
== MAJAN ~We've had a visitor lately, you see. That cat belongs to her. She's out on business right now, but she's been staying at the workshop in the back.~
END
++ ~Your nephew mentioned Aura. Is she perhaps an artificer from Lantan? Pink hair, goggles, metal squirrel on her shoulder?~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-BG1
+ ~!InParty("JAN")~ + ~What kind of workshop do you have back there, anyway?~ + MAJANSEN-1a
+ ~InParty("JAN")~ + ~What kind of workshop do you have back there, anyway?~ + MAJANSEN-1b
++ ~I need to go now. Excuse me.~ + MAJANSEN-0

CHAIN MAJAN MAJANSEN-0
~Of course, I won't take up any more of your time. You have a wonderful <DAYNIGHTALL>.~
EXIT

CHAIN MAJAN MAJANSEN-1a
~Oh, it's just a room my son Jan uses to work on his various contraptions. Usually it's quiet as a mouse inside when he's not around, but after since our guest arrived in the house, we cleared the room out a bit.~
EXTERN MAJAN MAJANSEN-2

CHAIN MAJAN MAJANSEN-1b
~Oh, it's just a room Jan uses to work on his various contraptions. Usually it's quiet as a mouse inside when he's not around, but after since our guest arrived in the house, we cleared the room out a bit.~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~Mother! You cleared out my things? I hope you didn't throw out the root alchemiser. I worked hard on that, you know.~
== MAJAN ~No, no, most everything's still in place. She was very interested in the things you've made, you know. She works a similar craft.~
EXTERN MAJAN MAJANSEN-2

CHAIN MAJAN MAJANSEN-2
~She's from Lantan, you see. It's an island nation full of clever inventors and artificers, so it was an unexpected honor to have her company, and offer her our workshop.~
END
+ ~OR(2)
BeenInParty("C0Aura")
Global("EndOfBG1","GLOBAL",0)~ + ~Did your nephew say her name was Aura? I think I might know her.~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-2a
+ ~OR(2)
BeenInParty("C0Aura")
Global("EndOfBG1","GLOBAL",0)~ + ~I thought that cat looked familiar...~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-2b
++ ~Who is this guest of yours?~ + MAJANSEN-3
++ ~I need to go now. Excuse me.~ + MAJANSEN-0

CHAIN MAJAN MAJANSEN-BG1
~Yes, that's exactly right. She's from the Glimmershine family—a very prestigous Lantanese name. Might you be a friend of hers?~
END
+ ~!Global("AnomenRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",2)
!Global("DornRomanceActive","GLOBAL",2)
!Global("HexxatRomanceActive","GLOBAL",2)
Global("C0AuraMatch","GLOBAL",1)~ + ~More than a friend, actually. We were... close.~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",1)~ + MAJANSEN-4
++ ~Yes, I am.~ + MAJANSEN-4
++ ~Not exactly, but I do know her.~ + MAJANSEN-4

CHAIN MAJAN MAJANSEN-2a
~Yes, yes, that's what she's called. She's from the Glimmershine family—a very prestigous Lantanese name. Might you be a friend of hers?~
END
+ ~!Global("AnomenRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",2)
!Global("DornRomanceActive","GLOBAL",2)
!Global("HexxatRomanceActive","GLOBAL",2)
Global("C0AuraMatch","GLOBAL",1)~ + ~More than a friend, actually. We were... close.~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",1)~ + MAJANSEN-4
++ ~Yes, I am.~ + MAJANSEN-4
++ ~Not exactly, but I do know her.~ + MAJANSEN-4

CHAIN MAJAN MAJANSEN-2b
~Oh, do you know the young lady? Her name's Aura, and she's from the Glimmershine family—a very prestigous Lantanese name. Might you be a friend of hers?~
END
+ ~!Global("AnomenRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",2)
!Global("DornRomanceActive","GLOBAL",2)
!Global("HexxatRomanceActive","GLOBAL",2)
Global("C0AuraMatch","GLOBAL",1)~ + ~More than a friend, actually. We were... close.~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",1)~ + MAJANSEN-4
++ ~Yes, I am.~ + MAJANSEN-4
++ ~Not exactly, but I do know her.~ + MAJANSEN-4

CHAIN MAJAN MAJANSEN-3
~Her name's Aura, of the Glimmershine clan. A very prestigious Lantanese name. Even some of the contraptions we have here owe their existences to their work. She's a lovely girl, too. We're all very glad to have her here.~
END
+ ~OR(2)
BeenInParty("C0Aura")
Global("EndOfBG1","GLOBAL",0)~ + ~I think I know her. We travelled together for a time in the Sword Coast.~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-4
+ ~!BeenInParty("C0Aura")~ + ~Someone like that could be helpful to know. Where is she right now?~ + MAJANSEN-5
++ ~That's interesting, but I really need to go. Excuse me.~ + MAJANSEN-0

CHAIN MAJAN MAJANSEN-4
~Well, isn't that a fortunate coincidence? I suppose you probably want to meet her and catch up, don't you?~
EXTERN MAJAN MAJANSEN-5

CHAIN MAJAN MAJANSEN-5
~Looking at the time of day... well, I'd say she should be back soon enough, if things are normal. If you take a walk down the district towards the Promenade, chances are you'd run into her along the way.~
DO ~SetGlobal("C0AuraBegin","GLOBAL",3)~
END
++ ~Thank you for the help. I'll go look for her.~ + MAJANSEN-6
++ ~I'll come back later, then.~ + MAJANSEN-6

CHAIN MAJAN MAJANSEN-6
~Of course, you go on now. I hope you don't have too much trouble finding the dear girl. She stands out quite a bit.~
DO ~~ EXIT

EXTEND_BOTTOM MAJAN 7
+ ~Global("C0AuraBegin","GLOBAL",2) !InParty("JAN")~ + ~Could you tell me about that workshop in the back?~ + MAJANSEN-1a
+ ~Global("C0AuraBegin","GLOBAL",2) InParty("JAN")~ + ~Could you tell me about that workshop in the back?~ + MAJANSEN-1b
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",10)
Global("C0AuraMaReminder","GLOBAL",0)~ THEN MAJAN MAJANSEN
~Ah, <CHARNAME>! Aura has come back home, if you're looking for her. She's waiting for you in the workshop right now.~
DO ~SetGlobal("C0AuraMaReminder","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Class(Myself,MAGE)
Kit(Myself,TRUECLASS)~ THEN C0ABOOK3 PYROMANCY
~After memorizing the contents of the tome, it bursts into flames.~
DO ~AddKit(C0PYROM)
CreateVisualEffectObject("ICFIRSDI",Myself)
DestroyItem("C0ABOOK3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KokoGiveFish","GLOBAL",2)~ THEN C0AKOKO a1.2
~*meows expectantly*~ [CAT02]
DO ~SetGlobal("C0KokoGiveFish","GLOBAL",2)~
END
+ ~PartyHasItem("C0AFISH1")~ + ~Here, have this bluefin tuna.~ DO ~TakePartyItem("C0AFISH1") DestroyItem("C0AFISH1") SetGlobal("C0KokoFishType","GLOBAL",1) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH2")~ + ~Here, have this darkscale bass.~ DO ~TakePartyItem("C0AFISH2") DestroyItem("C0AFISH2") SetGlobal("C0KokoFishType","GLOBAL",2) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH3")~ + ~Here, have this striped sheepshead.~ DO ~TakePartyItem("C0AFISH3") DestroyItem("C0AFISH3") SetGlobal("C0KokoFishType","GLOBAL",3) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH4")~ + ~Here, have this amethyst eel.~ DO ~TakePartyItem("C0AFISH4") DestroyItem("C0AFISH4") SetGlobal("C0KokoFishType","GLOBAL",4) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH5")~ + ~Here, have this queen's knife.~ DO ~TakePartyItem("C0AFISH5") DestroyItem("C0AFISH5") SetGlobal("C0KokoFishType","GLOBAL",5) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("L#NIFIS")~ + ~Here, have this old fish.~ DO ~ActionOverride(LastTalkedToBy,ApplyDamage(Myself,1,PIERCING))~ + a1.oldfish
++ ~I'd love to feed you, but I haven't got anything for you. Where might I be able to buy fish in this city...?~ EXIT
++ ~Go away! Shoo!~ EXIT

CHAIN C0AKOKO a1.3
~Meow! *gobble gobble*~
= ~*purrs*...~
DO ~SetGlobal("C0KokoGiveFish","GLOBAL",3) EscapeAreaObject("Door0600")~ EXIT

CHAIN C0AKOKO a1.oldfish
~(The cat gives it a quick sniff before scratching you with his claws and shooting you a look of contempt.)

*Hisssss!*~
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,25)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KokoGiveFish","GLOBAL",3)~ THEN C0AKOKO a1.4
~Mrrow!

(The cat rubs against your legs affectionately and drops something shiny at your feet.)~ [CAT02]
DO ~SetGlobal("C0KokoGiveFish","GLOBAL",2)~
END
IF ~Global("C0KokoFishType","GLOBAL",1)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("misc41",Player1,1,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",2)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("misc45",Player1,1,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",3)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("ring07",Player1,1,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",4)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("c0aston1",Player1,3,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",5)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("c0aring1",Player1,1,0,0)~ EXIT

// QUEST 1

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",1)~ THEN C0APICO QUEST1-PICO
~Oh, miss Aura! Beg your pardon, I wasn't paying attention, so I didn't recognize you.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",2)~
	== C0AURA2J ~Pico! What are you doing here?~
	== C0APICO ~Just takin' a walk around, miss. I was doin' some errands for auntie, but I was done sooner than I expected, so I've been checking out some places to pick up some odds and ends.~
	== C0AURA2J ~Odds and ends, such as... what's that you have in your hand, Pico? You were staring at it so intently, I thought you were going to bump into me.~
	== C0APICO ~This? Eh... just a toy, miss. Don't laugh, but I've always liked collecting these kinds of special dolls. I've never seen one like this one before, so I had to bring it home.~
	== C0AURA2J ~Can I have a closer look?~
	== C0APICO ~Sure, miss.~
	== C0AURA2J ~This *is* exceptionally well-made... wait, unless I'm mistaken, this is Lantanese craftsmanship! Where did you get this from, Pico?~
	== C0APICO ~I picked it up from one of the new stalls in Waukeen's Promenade, miss. Actually, now that I think of it, the vendor was a gnome close to your own age.~
	== C0AURA2J ~Huh, really? They must also be a fellow Lantanna. Do you know his name?~
	== C0APICO ~His name's Reese, I think. Brown hair and beard, and wears a blue tunic. If you're interested in meeting him, miss, he should still be at the promenade right now, and on most mornings.~
	DO ~EscapeArea()~
	== C0AURA2J ~I actually do want to have a look, if he's really making Lantanese crafts... it's been a while since I've spoken face to face with anyone else from home.~
	== C0AURA2J ~If we have a chance, do you think we could go over and have a look, <CHARNAME>?~
	END
		++ ~Sure. We can check it out when we have time.~ EXTERN C0AURA2J QUEST1-PICO-1
		++ ~I'm not interested in shopping for toys.~ EXTERN C0AURA2J QUEST1-PICO-2

CHAIN C0AURA2J QUEST1-PICO-1
~Thanks, <CHARNAME>. I know it's a trivial thing, but after hearing about it, I can't help but be curious.~
EXIT

CHAIN C0AURA2J QUEST1-PICO-2
~I know, I know. It's probably not an important thing. But I really would like to see if there's really crafts from my home. If we pass by the promenade later, maybe we could take a quick look?~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",3)~ THEN C0AREES QUEST1-REESE
~...and this one looks like a doll, but it can dance all on its own! You see, just push in the key and wind it up, four or five turns should do it, and...~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",4)~
== C0AKID3 ~Oooooh...~
== C0AKID1 ~Mr. Reese! Can you show us the horse with the carriage?~
== C0AREES ~That one? Well, if you insist... now, clear a path, please. There we go, now I'm going to use the key and... watch it go!~
== C0AKID2 ~Wow! It really does move on its own! It's like magic.~
== C0AREES ~No, not magic, young man. It's a brilliant piece of clockwork, put together using complex parts and logic.~
== C0AKID4 ~Do you make all these amazing toys yourself, Mr. Reese?~
== C0AREES ~I wish I could claim that honor, my dear, but no. I put together the parts, but all of these are designed by my teacher, Car... well, I think you might find his name a bit of a mouthful, so just call him "Uncle Mag".~
== C0AKID4 ~Can we meet Uncle Mag one day? I want to know about everything he's made!~
== C0AREES ~Well... I'm afraid his legs aren't as strong as they used to be. He doesn't leave the workshop often. But I will tell him of your interest, young man. Now then, who wants a closer look at this sweet girl?~
== C0AKID3 ~I... I really want that doll... but I don't have any money...~
== C0AREES ~Not to worry, dear girl. Uncle Mag wants these creations to make young children like you happy. It's all yours—come back if it ever needs fixing.~
== C0AKID3 ~Th–thank you...~
== C0AREES ~Now, what about this toy knight? Look at the colours, and it comes with a brave steed to match!~
== C0AKID1 ~Me, me! I want that one!~
== C0AURA2J ~<CHARNAME>, those are Lantanese crafts! I can tell even from a distance.~
END
++ ~Really? That's quite the coincidence.~ EXTERN C0AURA2J QUEST1-1
++ ~Is that gnome a Lantanese inventor like you then?~ EXTERN C0AURA2J QUEST1-1
++ ~Do you want to have a talk with the fellow?~ EXTERN C0AURA2J QUEST1-1

CHAIN C0AURA2J QUEST1-1
~I haven't had a chance to talk to someone from my homeland in a long time. And those toys... they're not simple creations. "Uncle Mag" must be a master of his craft. I'd... like to ask him a few questions, if I can.~
== C0AREES ~Well, that's all I have today, little ones. Come back tomorrow, and maybe I'll show you something else.~
== C0AKID2 ~Bye, Mr. Reese!~
DO ~ActionOverride("C0AKID1",EscapeArea())
ActionOverride("C0AKID2",EscapeArea())
ActionOverride("C0AKID3",EscapeArea())
ActionOverride("C0AKID4",EscapeArea())~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",4)~ THEN C0AREES QUEST1
~Sorry, but I'm closing shop for today. If you wanted something, you'll have to come back tomorrow.~
END
IF ~!InParty("C0Aura")~ EXIT
IF ~InParty("C0Aura")~ DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",5)~ EXTERN C0AURA2J QUEST1.1

CHAIN C0AURA2J QUEST1.1
~'Ciao! I was hoping to have a chance to talk, if it's not a problem.~
== C0AREES ~Oh! There's a greeting I didn't think I'd hear around here. You must be from the homeland, sonina. I can definitely spend some time for another Lantanna.~
== C0AURA2J ~Thank you! I'm Aurelia Glimmershine, but please call me Aura. This is my friend and leader, <CHARNAME>. We learned about your incredible crafts and I was hoping to meet you.~
== C0AREES ~Glimmershine... you can call me Reese Sprocket. What brings you here?~
== C0AURA2J ~Well, just travelling, studying from the outer lands... making some friends in the process. What about you, soroni?~
== C0AREES ~I'm... um, you could say that I've made a living here. I've been learning from my teacher, professor Magnussen. You could call me his student and caretaker.~
== C0AURA2J ~Magnussen...? That sounds familiar... wait, is he 'Uncle Mag'? He makes the crafts you're selling?~
== C0AREES ~That's him. He's from the homeland, just as you and me. I came here to seek his tutelage years ago, and he took me in. I help to peddle some of his crafts for some coin, and help him with his studies at other times.~
== C0AURA2J ~'Studies'... what sorts of things does your professor specialize in?~
== C0AREES ~Ah, it'd be easier to list what he *doesn't* specialize in. You wouldn't find a field he doesn't have some knowledge of, whether it's engineering, alchemy, botany... well, anything related to the sciences or mathematical theory. He's an unparalleled expert.~
== C0AURA2J ~Such a distinguished member of the homeland, here... do you think it'd be alright if I met him?~
== C0AREES ~The professor doesn't see many guests, but he's quite personable, really. I'm sure if he sees another Lantanna, he'll be happy to spare as much time for you as he wants. We live in the back alley of the Slums district... hang on, if you have a map...~
DO ~RevealAreaOnMap("C0AUR1")~
== C0AREES ~It's mostly a place for lower class folk to live, so strangers don't pass through it very often. You probably wouldn't know to without knowing the way. I'm expected back there, so I should go now, but I'll be looking forward to seeing you at our home, sonina. Farewell!~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",5)~ THEN C0AREES QUEST1
~The professor's in the other room.~
EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Global("C0AuraBG2Quest1","GLOBAL",5)~ THEN C0AMAGN magnus1
~Ach! Do I hear guests? Now where did I put my spectacles... ay, there they are! Now let me have a proper look at you...~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",6)~
== C0AMAGN ~Hmm, I don't believe I recognize you. You're not the new delivery <PRO_GIRLBOY>, are you? No, I don't see you carrying anything I'm expecting.~
END
++ ~I'm <CHARNAME>. Your assistant, Reese, told me about this place.~ + magnus1.1a
+ ~InParty("C0Aura")~ + ~My friend here is the one who wanted to meet you.~ EXTERN C0AURA2J magnus1.2
++ ~Watch your words, old man. I'm not the delivery <PRO_GIRLBOY>.~ + magnus1.1b

CHAIN C0AMAGN magnus1.1a
~Reese did that, did he? Now that you mention it, I do believe he said something about that... something about a Lantanese artificer with you that was interested in seeing me, eh?~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C0AURA2J magnus1.2
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C0AMAGN magnus1.3

CHAIN C0AMAGN magnus1.1b
~No? Hmm... come to think of it, Reese did mention that I should possibly expect some guests... something about a Lantanese artificer that was interested in seeing me, eh?~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C0AURA2J magnus1.2
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C0AMAGN magnus1.3

CHAIN C0AURA2J magnus1.2
~Oh, that's me, sir. I'm Aurelia, of the Glimmershine clan.~
== C0AMAGN ~Glimmershine, eh? A good family, that. Made plenty of talented artisans over the generations. Might I assume you also have some Mideveningwalker blood as well? I can tell from the nose.~
== C0AURA2J ~You're... you're right, sir! My mother is a Mideveningwalker. Ahaha... is it that easy to tell just from my nose?~
== C0AMAGN ~Well, the shape is unmistakable. I've never seen one descended from the clan that broke the pattern.~
EXTERN C0AMAGN magnus1.4

CHAIN C0AMAGN magnus1.3
~I don't seem to see anyone of the sort with your right now, however... believe me, I can recognize my kinsmen at a glance. A shame, but if you could bring them along on the next visit, I'd certainly like to meet them.~
EXTERN C0AMAGN magnus1.4

CHAIN C0AMAGN magnus1.4
~In any case... welcome, welcome to my home! I'd shake your hand, but I've dipped my fingers in some rather messy experiments during the last hour.~
== C0AMAGN ~Oh yes, I should offer my name. Ahem... Caridius C. Magnussen, scientist and inventor. Formerly of Lantan, but I've called Amn my home for the last half century.~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C0AURA2J magnus1.5
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C0AMAGN magnus1.6

CHAIN C0AURA2J magnus1.5
~Caridius Magn... I'm sorry, sir, but for some reason, I don't think your name is familiar, strangely.~
== C0AMAGN ~No? Well... no matter, my dear. You seem rather young for one of our kin, so that is not unexpected. I'm just an old man living out my retirement, these days.~
EXTERN C0AMAGN magnus1.6

CHAIN C0AMAGN magnus1.6
~There's not much cause for an inventor here in Athkatla, much less in the poorer district, but this simple abode has been the best I can manage, and so I must do what I can to get by. My skills are at least capable of building playthings for children as "Uncle Mag" for a few coins, and it is enough to put food on my table.~
= ~That said, if you are the adventuring type, there may be something I have that is of value to you. I may have never taken to the road for extended periods myself, but I am an omnidisciplinary researcher, and perhaps some of my creations may be of use to those of your profession.~
= ~I'm afraid I don't have much to offer in terms of a proper welcome, but you are free to make yourself home here, small as my little workplace is. I cannot stay idle while there's still so much work to do, but please do tell me if there is anything I can do for you.~
EXIT

CHAIN IF ~RandomNum(4,1)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~Let's see... if I were to, hmm... with the ether... yes, that would—erm, did you need something?~ [C0A1101]
END
++ ~Do you have anything to sell?~ + MAGN-SHOP
++ ~Can I ask you a few questions?~ + MAGN-QUESTIONS
++ ~Not right now.~ EXIT

CHAIN IF ~RandomNum(4,2)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~I do believe another twelve ounces of emulsifier should to do the trick... ah, it's you! Please, make yourself at home.~ [C0A1102]
END
++ ~Do you have anything to sell?~ + MAGN-SHOP
++ ~Can I ask you a few questions?~ + MAGN-QUESTIONS
++ ~Not right now.~ EXIT

CHAIN IF ~RandomNum(4,3)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~Reese, my boy, have you seen my jar of Formula #157? I could've sworn I left it in... oh, I beg your pardon. Do you need anything?~ [C0A1103]
END
++ ~Do you have anything to sell?~ + MAGN-SHOP
++ ~Can I ask you a few questions?~ + MAGN-QUESTIONS
++ ~Not right now.~ EXIT

CHAIN IF ~RandomNum(4,4)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~By Gond, were I still in my younger days I would test these contraptions for faults myself... erm, don't mind an old man's ramblings. I'm paying attention... mostly.~ [C0A1104]
END
++ ~Do you have anything to sell?~ + MAGN-SHOP
++ ~Can I ask you a few questions?~ + MAGN-QUESTIONS
++ ~Not right now.~ EXIT

CHAIN C0AMAGN MAGN-SHOP
~I've got a few prototypes laying around that could use some testing, if you're interested. Just be careful—most of them are experimental. If anything unexpected does happen, do come back and tell me. Er, if it doesn't kill or horribly maim you, that is.~
END
++ ~Let me see what you have.~ DO ~StartStore("C0AMAGN",LastTalkedToBy(Myself))~ EXIT
++ ~Maybe later.~ EXIT

CHAIN C0AMAGN MAGN-QUESTIONS
~Questions? Questions, yes. Of course you may, my <GIRLBOY>.~
END
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",53)
     Global("C0AuraMagnReese","GLOBAL",0)~ + ~Are you aware that Reese is an agent of Oculus here to keep you under surveillance?~ DO ~SetGlobal("C0AuraMagnReese","GLOBAL",1)~ + MAGN-REESE
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",48)
     Global("C0AuraMagnDisciples","GLOBAL",0)~ + ~I noticed you got rather angry when those gnomes from Interitus mentioned disciples. Is there a story behind that?~ DO ~SetGlobal("C0AuraMagnDisciples","GLOBAL",1)~ + MAGN-DISCIPLES
  ++ ~Actually, I'd rather see what you have to sell.~ + MAGN-SHOP
  ++ ~Maybe later.~ EXIT

CHAIN C0AMAGN MAGN-QUESTIONS2
~Now then, is there something else you wished to ask?~
END
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",53)
     Global("C0AuraMagnReese","GLOBAL",0)~ + ~Are you aware that Reese is an agent of Oculus here to keep you under surveillance?~ DO ~SetGlobal("C0AuraMagnReese","GLOBAL",1)~ + MAGN-REESE
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",48)
     Global("C0AuraMagnDisciples","GLOBAL",0)~ + ~I noticed you got rather angry when those gnomes from Interitus mentioned disciples. Is there a story behind that?~ DO ~SetGlobal("C0AuraMagnDisciples","GLOBAL",1)~ + MAGN-DISCIPLES
  ++ ~Actually, I'd rather see what you have to sell.~ + MAGN-SHOP
  ++ ~Maybe later.~ EXIT

CHAIN C0AMAGN MAGN-REESE
~He's told you, eh? Well, naturally I do know, of course. I was expecting one like him to appear sooner or later after my exile.~
= ~After all, the odds of a clever Lantanna youth just happening to discover me in this den of squalor seems too convenient to be a simple coincidence, don't you think? Not to mention, there is no chance the Ayrorch would simply allow me to go my own ways unsupervised for all these years, given the knowledge I possess. I would be insulted if they didn't send someone to keep watch over me.~
= ~I am aware, and I suspect he is intelligent enough to have realized that as well, though we have never said it plainly to each other. Besides, it's more convenient for me to have a capable assistant at hand, and Oculus he may be, he is still a young man eager to learn. I believe his decision to remain here is beyond simple duty.~
EXTERN C0AMAGN MAGN-QUESTIONS2

CHAIN C0AMAGN MAGN-DISCIPLES
~Ah... you should not concern yourself over that, my <GIRLBOY>, though I suppose there is no harm in telling you. When I was still a professor of the Sambaran academy, I naturally mentored many young Lantanna. Among them, there were two... a brother and sister, who had enough talent to become my protégés.~
== C0AMAGN ~Their names were Dedalus and Glaphyra Dinelstrand, and they both became High Artificers of the Great Workshops. Dedalus, whose proficiency was in machinery and inanimate creations, took charge of the Eleventh Workshop, while Glaphyra... who was fascinated in life and its workings like myself, and was always the one closer to me, was the leader of the Fourth Workshop.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Dedalus and Glaphyra? They're distant family from my father's side... Uncle Dedalus is my father's half-brother, and the one who helped me build the Sunshooter. I only remember a little bit of Aunt Glaphyra... she died when I was still very young, but I remember she was kind, and doted on me often.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~I never knew that she was Head Artificer of the Fourth Workshop... or what the workshop even was built for. Was the removal of the Fourth Workshop, and her death related...?~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~I'm afraid I'm no authority on the matter, my dear. I know very little of it myself... only that there is nobody alive who was present to witness what happened to her, and not long after the tragedy, the Ayrorch revised their restrictions on experimentation on life into complete prohibition.~
== C0AMAGN ~I suspect Glaphyra likely involved herself in some project which ultimately went out of hand, and her death, as well as the Fourth Workshop becoming a forbidden subject among Lantanna, are related... but that is in the past, now. I do not wish to think of it any longer.~
EXTERN C0AMAGN MAGN-QUESTIONS2

CHAIN IF ~True()~ THEN C0AASCS GILBERT
~I greet you, friend. Have you come in need of any potions or medical remedies?~
END
+ ~Global("C0AuraBG2Quest1","GLOBAL",35)~ + ~I need to see Asclepios. Where is his home?~ + QUEST1-35
+ ~Global("C0AuraBG2Quest1","GLOBAL",13)~ + ~About that man and his father...~ + GILBERT-QUEST
++ ~Let me see what you have.~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
++ ~Do you make all these potions yourself?~ + GILBERT-ASK
++ ~No. thank you.~ EXIT

CHAIN C0AASCS GILBERT-ASK
~Not I, no. My mentor, Asclepios, the finest physician and potioneer in all of Athkatla, brews all of these potions himself. Their quality and effects are unrivaled, I assure you.~
END
++ ~Why does such a person with such skill ask you to peddle his creations in this kind of place?~ + GILBERT-ASK-1
++ ~Then I would like to have a look at what you have.~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
++ ~I see. I have no need for potions right now, though.~ EXIT

CHAIN C0AASCS GILBERT-ASK-1
~Master Asclepios is... unusual, to say the least. He does not care for the richer parts of the city, and prefers to work in this area, where the need for a physician is greatest.~
= ~He is a reclusive sort, but you will see him here, should you come at the right time, to personally tend to those in need of his skills. Most days, however, he remains in his home, researching and creating remedies while I do the task of providing them to the needy.~
END
++ ~Then I would like to have a look at what you have.~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
++ ~I see. I have no need for potions right now, though.~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",7)~ THEN C0AREES QUEST1-BEGIN
~Oh, before you go, on the off chance... does the word 'Titan' mean anything in particular to you?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",8)~
END
++ ~Titan? As in, the giants?~ + QUEST1-BEGIN-1
++ ~Nothing important, no. Why?~ + QUEST1-BEGIN-2

CHAIN C0AREES QUEST1-BEGIN-1
~That is the usual definition... but if that's all that comes to mind, then...~
EXTERN C0AREES QUEST1-BEGIN-2

CHAIN C0AREES QUEST1-BEGIN-2
~I was just curious, but if it doesn't ring a bell at all, then you can forget I asked about it.~
END
IF ~InParty("C0Aura")~ THEN EXTERN C0AREES QUEST1-BEGIN-3
IF ~!InParty("C0Aura")~ THEN EXTERN C0AREES QUEST1-BEGIN-4

CHAIN C0AREES QUEST1-BEGIN-3
~What about you, miss Aurelia? I don't suppose you know?~
== C0AURA2J ~'Titan'... you know, I think I have heard that word being used recently, but... I can't remember, sorry.~
== C0AREES ~I see.~
EXTERN C0AREES QUEST1-BEGIN-4

CHAIN C0AREES QUEST1-BEGIN-4
~I just needed to make sure, but I suppose if you don't know, that might be for the best. I'm sorry to keep you.~
DO ~AddJournalEntry(%Quest1_Entry_1%,QUEST)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",9)~ THEN C0AQMAN QUEST-MAN
~Father! Father, please get up, at least so I can carry you! It can't be too far from here now, we can find it if we walk a little longer!~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",10)~
== C0AQMAN ~Oh, you there! Please, help me carry my father! He's seriously ill, and I need to get him to a healer!~
END
  ++ ~Why are you going this way? The temple district is in the other direction.~ + QUEST-MAN-1
  ++ ~Alright. Where do you need to go?~ + QUEST-MAN-2
  ++ ~This isn't my business. Carry him yourself.~ + QUEST-MAN-0

CHAIN C0AQMAN QUEST-MAN-0
~Curse you for your cruelty... damn it! Father, hold on, I'll bring you to the healer, I promise!~
DO ~ActionOverride("C0AQDAD",DestroySelf())
EscapeArea()~ EXIT

CHAIN C0AQMAN QUEST-MAN-1
~The priests... they can't cure what ails him! Something's wrong with him, and there's only one person who might be able to help.~
EXTERN C0AQMAN QUEST-MAN-2

CHAIN C0AQMAN QUEST-MAN-2
~'Asclepios'... I've heard there's a healer called Asclepios who lives in the back alley of the slums, a miracle worker who can cure any ill, no matter how dire! Please, you have to help me get my father to him!~
END
  ++ ~Alright. Lift him up, we'll carry him together.~ + QUEST-MAN-3
  ++ ~Go find someone else. I'm busy.~ + QUEST-MAN-0

CHAIN C0AQMAN QUEST-MAN-3
~Thank you, <PRO_SIRMAAM>! Quickly, there's no time to waste!~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0AMOV01")
ActionOverride("C0AQDAD",DestroySelf())
EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",10)~ THEN C0AASCL QUEST-ASCLEPIOS
~I have completed my diagnosis. Your father has been afflicted with an unusual poison, which has entered his bloodstream and spread through his body.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",11)~
== C0AQMAN ~P-poison?! But, even the priests could not do anything... please, sir, you must be able to cure him!~
== C0AASCL ~Treatment will take time, but as you have brought him to me, his life is no longer in danger. Stand back and allow me to work.~
DO ~StartCutSceneMode()
Wait(2)
ForceSpell("C0AQDAD",CLERIC_NEUTRALIZE_POISON)
Wait(2)
StartDialogNoSet(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",11)~ THEN C0AASCL QUEST-ASCLEPIOS-2
~The encroachment of poisons from his vitals has been cleansed. The only thing left is for his body to naturally purge the remainder of the tainted fluids from his body.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",12)~
== C0AQMAN ~So... he'll be alright, then?~
== C0AASCL ~I recommend allowing him to rest here for the moment until he is ready to walk. Feed him with the prescribed medicine and carefully observe his condition for the next week. I will personally examine how his health has recovered in the future.~
== C0AQMAN ~Understood, sir. Thank you, sir!~
== C0AASCL ~Gilbert, you should know the composition of the required medicines. I can leave the rest to you.~
== C0AASCS ~Yes, master.~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("C0AASCL",EscapeArea())
Wait(3)
StartDialogNoSet(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",12)~ THEN C0AASCS QUEST-ASCLEPIOS-3
~Do not worry, good man. My master's skills as a physician are second to none in all of Amn. Your father will be in perfect health within the week.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",13)~
== C0AQMAN ~I can but believe you, sir... it greatly shames me, but I have very little to repay you with...~
== C0AASCS ~No payment is necessary. My master does his work for its own sake, and I strive to help others in need. If you do not mind, though, I would like to know one thing. How did your father become like this?~
== C0AQMAN ~He, well...~
== C0AASCS ~If it is personal, you do not need to explain.~
== C0AQMAN ~No no, sir. It's just that... I'm trying to get my head around it myself. My father's always been in rather poor health, and at his age, he's only been getting steadily worse. Lately, when I couldn't have imagined it, things started looking up for a while, with father getting better... then, out of nowhere, this happened. I just don't get it... how could he have gotten poisoned?~
== C0AASCS ~Curious indeed... if I may ask, when exactly did his health start improving, and how quickly?~
== C0AQMAN ~Let me think... well, it must have been within the last month. I couldn't believe it myself... one day, he was just waking up earlier, eating full meals, even taking walks more often. It was like the gods were showing mercy, with how sudden it was.~
== C0AASCS ~Did he see any different healers during that time? Or taken any special remedies?~
== C0AQMAN ~He... he wouldn't say, sir. I asked, as well... all he would tell me was that he had somebody to be thankful for... but I don't know what he meant by that.~
== C0AASCS ~I see... forgive me if this sounds harsh, friend, but such a rapid and unexpected recovery is... unusual. Such miracles do not happen without reason.~
== C0AASCS ~Please do not be alarmed, but something about this does not rest easy with me... in which case, there is something I must do.~
== C0AQMAN ~By the gods! What are you doing? Stop!~ [HIT_01A1]
== C0AASCS ~Rest easy. I am only taking a sample of blood. The bleeding will stop once I apply some healing salve.~
== C0AQMAN ~I—I see... then...~
== C0AQMAN ~Sir, my father... will he be alright? Is something still wrong with him? Is there anything more I can do to help?~
== C0AASCS ~Well... if you feel safe to leave your father under my care, then I would ask that you return home to examine for anything unusual among your father's possessions. Perhaps some sort of unfamiliar medicine, or any written account of suspicious sales.~
== C0AASCS ~These symptoms are certainly not born of any natural ailment, so I can only suspect some form of malign compound is the culprit. Any evidence to support my claim may give us grounds for further treatment.~
== C0AQMAN ~I... I will go immediately and search our house from top to bottom for anything strange, sir. Please tend to my father as well as you can in the meantime!~
DO ~EscapeArea()~ EXIT

CHAIN C0AASCS GILBERT-QUEST
~Yes... the poor lad. I understand his pain, completely helpless to prevent his father's suffering. I will do what I can, but unless we have any further knowledge for what the specific cause is, nothing is certain, I fear.~
= ~All I can do is my best. With my master Asclepios's training, I believe the chances are better than nothing. ~
END
  ++ ~Can I help somehow?~ + GILBERT-QUEST-1
  ++ ~I need to buy some potions.~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
  ++ ~Good luck with that. I have to go.~ EXIT

CHAIN C0AASCS GILBERT-QUEST-1
~I should not be asking anything difficult from someone with little involvement in this... but you were kind enough to bring this man here, so perhaps you may be willing to do more.~
= ~There is... one lead that could be followed that I know of. It is nothing but speculation, but rumor has it that a miracle remedy known as Titan has been spread throughout the black market of this city.~ 
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Titan... there's that word again.~
== C0AASCS IF ~InParty("C0Aura")~ ~You know of it?~
== C0AURA2J IF ~InParty("C0Aura")~ ~We were told about something called that existing not long ago, but... that's all we know.~
== C0AASCS ~I see. Then you are as in the dark about it as I am.~
END
  ++ ~That seems suspicious. Why didn't you bring it up to the man's son?~ + GILBERT-QUEST-2
  ++ ~Do you know if there's any truth to this rumor?~ + GILBERT-QUEST-2

CHAIN C0AASCS GILBERT-QUEST-2
~Like I said, this is but a mere rumor, and a recent one. Not to mention, if the criminal underworld is involved, then there is likely a massive danger behind the truth.~
= ~I could not simply expose my theories to a civilian when it is nothing but a baseless claim. Especially in his desperation... I fear for what he might do as a result.~
END
  ++ ~Fair enough. But do you believe this 'Titan' thing might be involved?~ + GILBERT-QUEST-3
  ++ ~I'm not afraid of dealing with the black market. What can I do?~ + GILBERT-QUEST-4

CHAIN C0AASCS GILBERT-QUEST-3
~If such a substance truly exists, then I doubt the sudden occurrence of an unknown malady is any coincidence. That said...~
EXTERN C0AASCS GILBERT-QUEST-4

CHAIN C0AASCS GILBERT-QUEST-4
~I fear I have no knowledge of how you may find the truth. Perhaps a member of the black market itself, or another underworld organization, assuming you dare to speak with them, may enlighten you further, though it will undoubtedly be dangerous.~
== JANJ IF ~InParty("Jan")~ THEN ~'Titan', eh? I had aspirations of becoming a Titan, many a lifetime ago... still, if it's a matter of illegal drugs we're talking about, I'm sure some fences around the city will no doubt have heard of it, given this sort of knowledge spreads around like a nasty rash from poison ivy. Maybe if we get some for ourselves, I might be able to have a look at it... just out of curiosity...~
== JAHEIRAJ IF ~InParty("Jaheira")~ THEN ~When it comes to affairs of this sort, no doubt Bernard at the Copper Coronet has some information he may divulge. I doubt he would be foolish enough to deal in it himself, however, so he can likely point us in the right direction at most.~
== YOSHJ IF ~InParty("Yoshimo")
!Global("WorkingForBodhi","GLOBAL",1)~ THEN ~This 'Titan'... I seem to have heard something related to the matter during my time in this city, not long before we met, my friend. Though, with my common sense, I wisely keep my hands clean of such substances... still, perhaps our 'friend' Gaelan Bayle may have some knowledge of the matter, given his associations. Asking him may be a prudent way forwards.~
== EDWINJ IF ~InParty("Edwin")
!Global("WorkingForBodhi","GLOBAL",1)~ THEN ~Hmm. A substance of such great claims may warrant some research... perhaps it would be to our benefit to acquire some of this 'Titan' for ourselves. No doubt the Shadow Thieves will have some knowledge on the matter. We should question them.~
== C0AASCS ~That is all I can tell you, friend. I do not ask you to put yourself at risk, but if you learn of anything, please let me know. There may be something I can do for this sick man if further information is discovered.~
DO ~AddJournalEntry(%Quest1_Entry_2%,QUEST)
SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",1)
SetGlobal("C0AuraBG2Quest1","GLOBAL",14)~ EXIT

EXTEND_TOP GAELAN 42 49 51
+ ~Global("C0AuraBG2Quest1","GLOBAL",14) Global("C0AuraBG2Quest1AskTitan","GLOBAL",1)~ + ~I was curious if you knew where to acquire Titan.~ DO ~SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",2)~ EXTERN GAELAN GAELAN-TITAN
END

EXTEND_TOP BERNARD 31
+ ~Global("C0AuraBG2Quest1","GLOBAL",14) Global("C0AuraBG2Quest1AskTitan","GLOBAL",1)~ + ~I was curious if you knew where to acquire Titan.~ DO ~SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",2)~ EXTERN BERNARD BERNARD-TITAN
END

EXTEND_TOP BMTHIEF 0 4
+ ~Global("C0AuraBG2Quest1","GLOBAL",14) Global("C0AuraBG2Quest1AskTitan","GLOBAL",1)~ + ~I was curious if you knew where to acquire Titan.~ DO ~SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",2)~ EXTERN BMTHIEF BMTHIEF-TITAN
END

CHAIN BERNARD BERNARD-TITAN
~Titan... I know of it, aye, but may the gods strike me down if I e'er dared to lay hands on that poison. Listen, friend. We've peddled in some unlawful substances here, I won't deny it... but I've seen people come in having partaken of Titan, and no matter what it may claim to offer... the consequences ain't worth it, I can assure you of that.~
= ~If you really value your life so little, I've heard rumors of some dealings in the Graveyard District at night. Suppose it's fitting, since it'll be where anyone involved in that trade ends up, one way or another.~
EXIT

CHAIN BMTHIEF BMTHIEF-TITAN
~Titan...? Ah, I see... that is what you're after, is it?~
= ~Unfortunately, the Shadow Thieves do not deal in Titan, my <PRO_LADYLORD>. I did have a sample of the curious concoction in my possession some time ago, but the order from the higher-ups was to dispose of any which that falls into our hands. It seems those higher in the chain of command find the benefits not worth the cost.~
= ~That said, if you are insistent on finding some for whatever reason... I have heard that they deal in the substance in the Graveyard District at night. That is the best lead I can offer you, I fear.~
EXIT

CHAIN GAELAN GAELAN-TITAN
~Titan? Me <PRO_LADYLORD>, now ye be barkin' up the wrong tree 'ere, I assure ye. Me and my employers, we get our hands in some shady dealin's, no doubt. But even we know a bad investment when we see one.~
= ~That stuff, it ain't good for ye. Maybe someone sleepin' in the streets would be desperate enough to give it a try, but even they'd regret it given enough time. So ye see, I can't get ye any, if that be what yer asking.~
END
  ++ ~I just wanted to know if you knew where to get some.~ + GAELAN-TITAN-1
  ++ ~Why I need it is my own business. I just need information.~ + GAELAN-TITAN-1
  ++ ~I'm trying to stop the trade. If you're not involved, you shouldn't have a problem with it.~ + GAELAN-TITAN-1

CHAIN GAELAN GAELAN-TITAN-1
~*siigh* Well... me employers ain't said nothin' about keeping this matter secret, so I suppose... I could point ye in the right direction.~
= ~Hmm... let me think. I haven't seen any o' the stuff meself, but I recall Arledrian sayin' somethin' bout a regular trade goin' on in the Graveyard District. Told him he shouldn't be dealin' with 'em, but if what he said be true, then I reckon ye'll find one o' the dealers there at night.~
= ~That bit o' information comes free, but let me tell ye again, me <PRO_LADYLORD>. Ye'd be better off forgettin' ye ever heard o' that substance existin'. It be bad business all around.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",14)~ THEN C0AQTHF QUEST1-TITAN-SELLER
~What're you starin' at me for, mate? This may be a graveyard, but there ain't no rules 'bout standing round here, are there?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",15)~
END
  ++ ~Certainly not. Rules on selling illegal concoctions, on the other hand...~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-1
  ++ ~I know what you're doing here, "mate". Titan. I want a sample.~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-2
  ++ ~Sorry to bother you.~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-1
~Excuse me? I ain't sure I like what you're implyin', mate.~
END
  ++ ~Don't take me for a fool. Nobody in their right mind would stand around in this place at night without reason. I know what you're carrying, and I want some.~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-2
  ++ ~Fine, I'll make it clearer for you then. I'm here to buy Titan, and you're going to sell it to me.~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-2

CHAIN C0AQTHF QUEST1-TITAN-SELLER-2
~So you're after the stuff, eh? Well, tough luck for you, mate. Maybe you heard 'bout this thing second-hand, but we got one main rule when it comes to dealin' Titan. "Only those in 'truly desperate need' get to buy".~
= ~You ain't lookin' scrawny, or too sickly to work. Looks like you're doin' well enough all around. You'll live without the stuff, so you ain't getting any.~
END
  ++ ~"Live without the stuff"? That's rich, given that you're killing people with what you're selling.~ + QUEST1-TITAN-SELLER-3
  ++ ~Listen here. I don't have the patience to trade words with you, so you're going to give me Titan or else I'll make you wish you had.~ + QUEST1-TITAN-SELLER-3A

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3
~What the blazes are you talking about? Nobody's gettin' hurt by what I'm doin'. Well, their purses might, a little, but they're willin' to make that trade.~
END
  ++ ~Tell that to Sean's father. He nearly died because of what you gave him!~ + QUEST1-TITAN-SELLER-4

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3A
~Ilmater's patience, the sorts of things people'll do for this kind of stuff... bah.~
= ~Listen here. I can tell you're serious and I'll probably end up joining the bodies here if I don't change my mind. But I'm still a person with responsibilities and people to take care of. So I can bend the rules a little and give you the Titan that I have, but you'll have to pay a little extra.~
END
  ++ ~Fine. How much are you asking for?~ + QUEST1-TITAN-SELLER-3B
  ++ ~"People you care for"? You don't seem to mind hurting people others care about.~ + QUEST1-TITAN-SELLER-3
  ++ ~Forget it. I'll just take it from your cold, dead hands.~ DO ~Enemy()~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3B
~Now, here's how it's gonna work. Normally when ordinary folk come for a deal, there's room for negotiation. But since you don't look like you're hurting for money and you're twistin' my arm to get your hands on some Titan, I'm going to raise it to a thousand. You think the newest big thing on the market comes cheap or easy to get? Think again.~
END
  + ~PartyGoldGT(999)~ + ~A thousand it is. Here you go.~ DO ~TakePartyGold(1000)~ + QUEST1-TITAN-SELLER-3C
  ++ ~Did you make the same deal for Sean's father while leaving out the part where he'd die?~ + QUEST1-TITAN-SELLER-4
  ++ ~I can think of a better deal. It ends with you dying.~ DO ~Enemy()~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3C
~Pleasure doing business with you. Just so you know, this is a one time deal, so don't expect to see me around here again.~
DO ~GiveItem("c0atitn",Player1) EscapeArea()~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-4
~Sean's father... what? You're sayin' he nearly died?~
DO ~SetGlobal("C0AuraBG2Quest1RoyTalk","GLOBAL",1)~
= ~L-listen here, friend. You've got it all wrong. Sean and I, we used to be best mates when we were kids. Things got a little rough for me, so I've been doing odd jobs with the local gangs to make ends meet, but I'd never mean to hurt his old man!~
= ~Sean's been scared that his father will die early cause of his illnesses, so I've been supplyin' him with a bit of Titan for free to help him get better. Titan... I thought it worked miracles. Even a little bit'll make sure you don't get sick anymore.~
= ~Sean's father didn't need much, so nobody realized I was skimmin' from our supply. I asked him not to tell Sean because I didn't want him to know I've been doin' work for the black market. But now you're saying this stuff, it's...~
END
  ++ ~Titan is toxic. It makes people healthier and stronger for a while, then kills them slowly from the inside.~ + QUEST1-TITAN-SELLER-5

CHAIN C0AQTHF QUEST1-TITAN-SELLER-5
~Damn it! I should've known it was too good to be true. The gangs, they said this stuff'll rake in the gold faster than black lotus, and we'll all get rich from the profits. I can't believe I didn't realize something was off when I heard the Shadow Thieves weren't distributin' it themselves!~
= ~I'm sorry, mate. I really am. I got greedy seein' how quickly I was selling the trash, but I wouldn't have taken a single coin if I had known it was actually killing people!~
END
  ++ ~I'm not the one you should apologize to. You owe Sean an explanation for what happened to his father.~ + QUEST1-TITAN-SELLER-6

CHAIN C0AQTHF QUEST1-TITAN-SELLER-6
~You're right. I have to talk to him. Even if he'll probably never forgive me for what I went and done.~
EXTERN C0AQTHF QUEST1-TITAN-SELLER-7

CHAIN C0AQTHF QUEST1-TITAN-SELLER-7
~Listen... I don't know what you want Titan for, but so long as it's not goin' and hurting anyone else, you can have what I got. You must be tryin' to end the dealin', or else you wouldn't have told me all this.~
DO ~GiveItem("c0atitn",Player1)~
= ~I'm quittin' the business. I won't be able to stay in for long anyway, not once they hear I gave away my supply without gettin' gold back. Probably for the best. I know it's dirty money I've been earning, but maybe I can use it to leave the city and go back to havin' a normal life.~
= ~Thanks for openin' my eyes, mate. If you find out where all this Titan stuff's been comin' from, I hope you can put a stop to all of it.~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",16)~ THEN C0AQINSP INSPECTOR-AEGISFIELD
~You there, hold a moment. In the name of the Council, I ask that you... wait, I know you, don't I?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",17)~
END
  ++ ~Inspector Aegisfield. It's been a while.~ + INSPECTOR-AEGISFIELD-1
  ++ ~We met during the skinner murder case.~ + INSPECTOR-AEGISFIELD-1

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-1
~Ah, I remember now. It's good to see you. I'll always be grateful for your help during that case, for it is one I'll likely never forget, much as I'd like to.~
= ~What are you doing here, if I may ask? The back alley is rarely a place for visitors.~
END
  ++ ~I was about to ask you the same thing.~ + INSPECTOR-AEGISFIELD-2
  ++ ~I'm here to find someone.~ + INSPECTOR-AEGISFIELD-3

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-2
~I am here to conduct a special inspection on the locals and any who enters the area, you see. There has been a rather unusual case of poisonings in the poorer districts as of late, and I have heard from a reliable source that an illegal substance may be the cause of it.~
= ~The higher-ups don't often care for the well-being of the people here, but regardless of their intent, they've ordered a thorough investigation on whether this rumor is true. No doubt they fear it spreading to the wealthy and highborn and wish to remove the threat before it's too late.~
END
  + ~PartyHasItem("c0atitn")~ + ~You mean this substance, right here?~ + INSPECTOR-AEGISFIELD-4
  ++ ~I assume you'll have to search me as well?~ + INSPECTOR-AEGISFIELD-5

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-3
~I see. Perhaps it's the physician, or the Lantanese gnomes at the house in the north? Though it sounds rather impolite, they are the only ones of note that I'm aware of.~
EXTERN C0AQINSP INSPECTOR-AEGISFIELD-2

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-4
~Is... is that it? Why do you have this, and why would you show it to me? You understand this is evidence, which means I should at the very least question you if not take you into custody?~
END
  ++ ~It's a long story, inspector. Rest assured, I have no intention of using or distributing it. I'm looking into it as well.~ + INSPECTOR-AEGISFIELD-6
  ++ ~I'm showing you this to prove to you that it exists, and also to make sure you can trust that I'm not hiding anything.~ + INSPECTOR-AEGISFIELD-6

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-5
~It is my duty to inspect *all* passers-by... but you've earned my trust from before, so it may be in both our interests if I simply gave you the benefit of the doubt.~
EXTERN C0AQINSP INSPECTOR-AEGISFIELD-7

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-6
~I see. Though I should ask that you come to the Chief Inspector and share what you know... I feel as though our lot will be all but useless in handling this case.~
EXTERN C0AQINSP INSPECTOR-AEGISFIELD-7

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-7
~Until this case affects those of high status, my higher-ups are stubbornly refusing to treat it with the severity it deserves, and the rare few among us who share my concerns have been stumbling in the dark for the better part of a month now with no results to show for it. And with some of the conditions I've seen from the afflicted... I would prefer to see this problem dealt with as quickly as possible, no matter the means.~
= ~You have solved one problematic case as it is, and though this may be beyond my station to say, I feel more confidence allowing you the freedom to investigate under your own terms than wasting both our time on customary procedures. Be careful, though. Other inspectors will no doubt pass through here, and they will not have the history that you and I share.~
= ~Now, as I have completed my task here, I must return and begin writing my report. Farewell.~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",16)~ THEN C0AQINS2 INSPECTOR-NEW
~Halt! By order of the Council, all entrants to the back alley are to be searched thoroughly, to prevent the trafficking of illegal substances.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",18)~
END
  ++ ~What's this all about?~ + INSPECTOR-NEW-1

CHAIN C0AQINS2 INSPECTOR-NEW-1
~It has been brought to our attention that a potential new dangerous compound has been spreading throughout these indigent districts. The Council will not stand this to spread to the nobility, so until the potential threat is identified, none shall pass without inspection. Set aside your weapons, open your backpacks and empty out your pockets! Nothing will go unsearched!~
END
IF ~InParty("C0Aura")~ EXTERN C0AQINS2 INSPECTOR-NEW-2
IF ~!InParty("C0Aura")~ EXTERN C0AQINS2 INSPECTOR-NEW-3

CHAIN C0AQINS2 INSPECTOR-NEW-2
~I will start with the gnome! That assortment of objects you're carrying are clearly suspicious. Show me everything you are carrying, now!~
== C0AURA2J ~Me? But I...~
== C0AQINS2 ~Silence! Any attempt at refusing inspection, and I will detain you immediately and bring you in for questioning! Now do as I have said!~
END
  ++ ~You'll do nothing of the sort. Leave her alone.~ EXTERN C0AQINS2 INSPECTOR-NEW-4
  ++ ~Lay a hand on any of us, and you'll regret it.~ EXTERN C0AQINS2 INSPECTOR-NEW-4

CHAIN C0AQINS2 INSPECTOR-NEW-3
~If any suspicious items are found during your search, you will follow me back to headquarters for questioning! Comply and this will be—~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
CreateCreature("c0arees1",[464.1011],S)
ActionOverride("c0arees",MoveToPoint([433.1314]))
ActionOverride("c0arees",Wait(2))
ActionOverride("C0arees",StartDialogNoSet(Player1))~ EXIT

CHAIN C0AQINS2 INSPECTOR-NEW-4
~If you are complicit in defying the demands of the law, I will arrest the lot of you! Now hurry up and—~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
CreateCreature("c0arees1",[464.1011],S)
ActionOverride("c0arees",MoveToPoint([433.1314]))
ActionOverride("c0arees",Wait(2))
ActionOverride("C0arees",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",17)~ THEN C0AREES REESE-AEGISFIELD
~You're finally back! I thought the inspector might give you trouble, so I was planning to help, but it looks like you've got some friendly connections of your own. Looks like I got worried for nothing.~
EXTERN C0AREES REESE-INSPECTOR-2-3

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",18)~ THEN C0AREES REESE-INSPECTOR
~Stop...! Stop this right now, officer! These people are sanctioned to pass through here without being subjected to this... harassment!~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",19)~
== C0AQINS2 ~Who do you think you are, gnome?~
== C0AREES ~I am... who I am is not important. But I believe if you read this, all will be made clear.~
== C0AQINS2 ~Bah, what is this rubbish? If you are wasting my time, then you...~
== C0AQINS2 ~...then...~
== C0AQINS2 ~This is... but this—~
== C0AREES ~It is clear now, yes? These people are employed by my master, Professor Caridius, to assist against the same task you are assigned to, inspector. It'd be to all our benefits if you allowed them to leave peacefully.~
== C0AQINS2 ~I... but... ngh. I have no authority to debate this. Very well, you... you may all pass. I... apologize for the trouble.~
== C0AREES ~No apology needed, inspector.~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("C0AQINS2",EscapeArea())
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",19)~ THEN C0AREES REESE-INSPECTOR-2
~Sorry about that. The whole business with illegal concoctions has tightened security, especially for the slums. We didn't get a chance to warn you before this happened.~
END
  ++ ~What did you show him?~ + REESE-INSPECTOR-2-1
  ++ ~Thanks for your help.~ + REESE-INSPECTOR-2-2
  ++ ~I need to see the professor.~ + REESE-INSPECTOR-2-3

CHAIN C0AREES REESE-INSPECTOR-2-1
~It's... a long story. The professor still has connections with a few officials of some power, and thanks to that we have some precautions just in case any authorities give us the wrong kind of scrutiny.~
EXTERN C0AREES REESE-INSPECTOR-2-3

CHAIN C0AREES REESE-INSPECTOR-2-2
~It's no trouble. You're working hard to try to solve the problem with Titan, so the professor and I are ready to help however we can.~
EXTERN C0AREES REESE-INSPECTOR-2-3

CHAIN C0AREES REESE-INSPECTOR-2-3
~If you're here to see the professor, just head to his home. He's having a meeting with a guest right now, but it won't be a problem to interrupt him.~
= ~I have an important errand to attend to, though, so I won't be going back with you right away. Good luck.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",20) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",21)~ THEN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS
~...indeed? I failed to notice that myself, until you just brought attention to it.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",22)~
== C0AASCL ~One cannot be expected to see every possibility with their own mind, professor. More gin?~
== C0AMAGN ~No, no, I think I should restrain myself. My liver is not as strong as it once way. I appreciate that you'd treat me with such something of so expensive, however. From what young Gilbert has said, your own finances have not been particularly stable.~
== C0AASCL ~Gilbert worries too much for my sake. I merely prefer to devote my expenses for matters related to my research. I believe it is a healthy approach to occasionally indulge in some luxuries, however.~
== C0AASCL ~I think I'll have another glass, myself, if you don't mind.~
== C0AMAGN ~You should consider your own health as well, my friend. You are not so young yourself, after all... oh, it seems a few familiar faces have returned.~
== C0AMAGN ~Come and have a seat, dear <PRO_GIRLBOY>. I was just working on some research with a good friend. It involves the mysterious Titan solution which I hear you are investigating, so it is for the best that you have arrived at this time.~
== C0AASCL ~As I understand, you are the adventurers that my apprentice Gilbert told of the rumor of Titan. Allow me to introduce myself. I am Asclepios, a doctor, apothecary, and researcher of medicine. I have been an acquaintance of Professor Caridius for some months.~
END
  ++ ~From what I've heard, you're something of a miracle healer.~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-1
  ++ ~A doctor? I thought the art of healing was generally left to the likes of priests.~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-2
  ++ ~If you're an apothecary, I have something to show you. I've got a sample of Titan with me.~ DO ~TakePartyItem("C0ATITN") DestroyItem("C0ATITN")~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-4

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-1
~I am not the sort to believe in such things as miracles. What you have heard of my practice is merely... a sign of the necessity of such abilities in such an impoverished society. A healer's work is sorely needed, and so the people view my deeds as that of a savior. But I do not view my work as anything truly exceptional.~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS-3

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-2
~That is true. The average person would indeed prefer to subscribe to the graces of divine intervention, than the strange and alien complexities of medicine. I do not blame them. Though, when the power of faith fails others, I hope my abilities may succeed. It is a humble service which I try to provide.~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS-3
~My dear Asclepios, you do your work too little credit. Your understanding of the workings of the body are beyond that of any researcher I have seen. To those without your years of knowledge, what you do can indeed be seen as a miracle.~
== C0AASCL ~It is simply knowledge, which anyone with the time and dedication may master. Nothing truly worthy of praise. My only concern is what may be achieved with what I know.~
END
  ++ ~If you know so much about medicine, perhaps you can identify this sample of Titan I have.~ DO ~TakePartyItem("C0ATITN") DestroyItem("C0ATITN")~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-4

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-4
~Let me see it... so, this is the rumored Titan concoction? Fascinating.~
== C0AMAGN ~Pass that over here, my friend, so that I may have a look as well. Hmm... didn't you have that other bottle the sickly man's son brought to your apprentice from just before you arrived as well? We must compare the residue from that sample to this.~
== C0AASCL ~That would be the simplest method. It is fortunate that the youth brought this to my attention.~
== C0AMAGN ~Let's bring this to my station and do some testing at once. Ah, my <PRO_GIRLBOY>, please stay seated and have some tea or gin while you wait. This may take a while.~
== C0AURA2J IF ~InParty("C0AURA")~ THEN ~Can I help, professor? I'd... like to understand more about this mystery medicine as well.~
== C0AMAGN IF ~InParty("C0AURA")~ THEN ~I appreciate it, dear girl, but I do not think it wise. Some of my equipment will be rather archaic compared to what you are likely more familiar with. In a matter of such urgency, it would be best if you left this to us.~
== C0AURA2J IF ~InParty("C0AURA")~ THEN ~Oh, I... I see.~
== C0AMAGN ~Now then, I think the first step would be to see their reaction to the boiler. I'll get the heat turned on at once...~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
ActionOverride("C0AASCL",MoveToPoint([242.185]))
MoveToPoint([228.241])
Wait(2)
FadeFromColor([30.0],0)
ActionOverride("C0AASCL",MoveToPoint([439.355]))
ActionOverride("C0AASCL",Face(W))
MoveToPoint([442.289])
Face(SW)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",22)~ THEN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2
~Well, that took more time than expected. I haven't been challenged so gravely in a long time, Asclepios. It's both concerning and exhilarating.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",23)~
== C0AASCL ~I agree. But I think we should be to the point, considering the severity of the matter.~
== C0AMAGN ~Yes, of course. Now, what to say, my <PRO_GIRLBOY>... well, to put it simply, we learned quite a lot, in fact. Though not all of it is good.~
END
  ++ ~I didn't expect good news. What have you learned that's important?~ + QUEST1-MAGNUS-ASCLEPIOS2-1
  ++ ~Do you at least know how to cure its effects?~ + QUEST1-MAGNUS-ASCLEPIOS2-2
  ++ ~Just get to the point.~ + QUEST1-MAGNUS-ASCLEPIOS2-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-1
~Many things, my <PRO_GIRLBOY>. If we were to explain down to the very detail, we may be here until the season's end. But I expect you would prefer a concise version, yes?~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-2
~Well... unfortunately, that will still take some time. With how much time it has taken to analyze the drug's composition alone, I fear finding a cure will be no easy process.~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-3
~Asclepios, my friend. This is your forte, and I think it best to leave the explanation to you.~
== C0AASCL ~As you wish.~
== C0AASCL ~Before I run the risk of confusing you, I must ask. How much do you understand of physiology?~
END
  + ~CheckStatGT(Player1,16,INT)~ + ~I wager I know enough to keep up.~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-4
  + ~CheckStatGT(Player1,16,INT)~ + ~A bit, but I'm wouldn't call myself an expert.~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-4
  ++ ~Not much, I'm afraid.~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-5
  + ~!CheckStatGT(Player1,16,INT)~ + ~Physio... what?~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-5

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-4
~Then I will do my best to explain as well as I can.~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-6

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-5
~Then I will attempt to explain things in the simplest terms I can find.~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-6

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-6
~I believe a certain amount of understanding will be necessary to truly comprehend the nature of this... 'Titan', and so for this matter I will offer my knowledge as a physician.~
= ~There is an... idea that certain researchers have theorized of the mortal body. To put it simply, many of us believe that we are only functioning at a portion of our true potential, and there is a strength within man's body which far exceeds their normal limit.~
= ~To ensure the body does not ruin itself with overuse of its ability, one may never harness this strength, yet sometimes it can be inadvertently unlocked for brief moments in moments of true desperation.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~I've heard of this too... it's called hysterical strength, when your body forces itself to its absolute limit, and you achieve things that would be considered impossible. It could be a life-or-death situation, for yourself, or for someone you care about...~
== C0AASCL ~I do not speak of the strength that one may find simply from strenuous training. I speak of something which allows a simple mortal to display feats that are far beyond what is expected. Such examples are so rare that they are often dismissed as hearsay, a trick of the senses when the mind is affected by the stresses of the situations it is placed in.~
= ~Of course, the mere knowledge that such potential exists has led to study of whether it is possible to unlock this strength of our own volition. And that is where our mysterious concoction comes into play.~
= ~Titan is not a poison. Though it is deeply flawed, it is intended to benefit the imbiber, to enhance and strengthen their body for a limited time. The fault is in the body's inability to manage the strength it is suddenly given.~
END
  ++ ~I don't understand. What makes this different from a tried and true strength potion, or anything else?~ + QUEST1-MAGNUS-ASCLEPIOS2-7
  ++ ~And what happens when the body can't handle this strength?~ + QUEST1-MAGNUS-ASCLEPIOS2-8
  ++ ~This is all very interesting, but what I need to know is what to do about it.~ + QUEST1-MAGNUS-ASCLEPIOS2-9

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-7
~A reasonable query. The common potion is derived from external supplements or magic. Its effects are temporary, and once its effects dissipate, you are left as you are from before its effects.~
= ~Titan, however, does not grant you strength from outside influence. The potential you gain from it are entirely those of your own body's making. It is a drug designed to allow you to exceed your limits, and with that, its consequences.~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-8

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-8
~By defying the limits your own body imposes on you for your own health, the withdrawal symptoms are severe. Your heart and muscles are forced to function in a manner they are not meant to, and cannot act at their normal capacity afterwards.~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-9

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-9
~If it were merely the failing of the body once the effects of the solution wore off, curing the afflicted would be a grueling, yet achievable process. However, it is not so simple.~
== C0AMAGN ~This brings us to why Asclepios came to me today, my <PRO_GIRLBOY>. According to his study of the poor man who was suffering withdrawal, it appears once you consume Titan, your body considers it as necessary for survival something as essential as breathing.~
== C0AMAGN ~Those who use it once are compelled to consume more under threat of unimaginable pain, and yes, doing so may alleviate the symptoms for a time... but regardless of whether they decide to indulge or abstain in it, its influence will lead to their death regardless.~
== C0AASCL ~Finding a way to alleviate the effects is paramount, but that is our role. Though it is not my place to dictate your current path, I believe culling the source of this problem should be your main priority.~
END
  ++ ~I'll deal with whoever is distributing Titan while the two of you try to find a cure.~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-10
  ++ ~Seems I have no choice but to go and find a lead on where this stuff is coming from.~ EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-11

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-10
~You need not worry regarding the prospect of a cure. As a doctor, such matters are my duty, and I will not rest until it is done.~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-11

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-11
~Leave the matters involving research to us, my <PRO_GIRLBOY>. You need to stop the problem from getting any worse, or else it'll be far too late for those already affected.~
== C0AASCL ~I will need to return home to continue my work, professor. Once I have discovered anything of note, you will be the first to know.~
== C0AASCL ~Farewell, and good luck to you.~
DO ~ActionOverride("C0AMAGN",MoveToPoint([237.201]) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",23)~ THEN C0AQTHF QUEST1-22
~There you are, mate! Looks like I came to the right place.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",24)~
END
 ++ ~How did you find me?~ + QUEST1-22-1
 ++ ~You were looking for me?~ + QUEST1-22-2
 ++ ~Out of my way. I don't have time for this.~ + QUEST1-22-3

CHAIN C0AQTHF QUEST1-22-1
~I asked around. You're... not that hard to find, you know. People like you don't pass by the back alley too often.~
EXTERN C0AQTHF QUEST1-22-4

CHAIN C0AQTHF QUEST1-22-2
~Yeah, mate. I have something important I think you need to hear.~
EXTERN C0AQTHF QUEST1-22-4

CHAIN C0AQTHF QUEST1-22-3
~No, no, listen mate. I've got something to say, and I know it'll be worth your time.~
EXTERN C0AQTHF QUEST1-22-4

CHAIN C0AQTHF QUEST1-22-4
~I was thinkin' more about it, and... well, I figured just the bottle of Titan I gave you wouldn't be much of a lead on its own. So I, uh... did some diggin' around on my former bosses, tryin' to find out something more useful.~
= ~There wasn't much, really. But one of the lot isn't too careful with his journal, so I was able to open it up and take a peek. Apparently they regularly meet with some gnomes in red to pick up their supply, at the dead of night.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~"Gnomes in red"...? Do you... do you know who they are?~
== C0AQTHF ~Sorry, I dunno. The ones up top would never trust me with any useful information, lest I get busted while dealin'. But I reckon I know where they'll be.~
END
++ ~Where?~ + QUEST1-22-5

CHAIN C0AQTHF QUEST1-22-5
~They meet at the southern side of the Bridge District, right outside the Temple of Helm. I dunno what they're thinkin' gathering in a place like that... maybe they think it'll look less suspicious, or they assume nobody would ever think to look there.~
= ~That's all I got, but I hope it leads to somethin'. I'm plannin' on leaving the city before any one of them finds out I ratted, so you probably won't see me again, mate. Good luck.~
DO ~AddJournalEntry(%Quest1_Entry_5%,QUEST) EscapeArea()~ EXIT 

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",24)~ THEN C0AQINT2 QUEST1-INTERITUS
~You are late.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",25)~
== C0ATHF2 ~I don't believe we are.~
== C0AQINT2 ~Three minutes and forty-three seconds.~
== C0ATHF2 ~So what? Bah, I'll never understand you gnomes and your absurd fixations. I couldn't give less of a damn, though. I expect you have the new supply of Titan.~
== C0AQINT2 ~The most recent, advanced formula has been produced... though yet untested. I have it here. I trust you have the written reports on the status of your customers.~
== C0ATHF2 ~They're all here. Don't know why you'd need this, but it doesn't matter as long as it means more money in our pockets.~
== C0AQINT2 ~You'll have your payment, on top of what you earn from the sale. We simply expect your competence in handling the black market.~
END
  ++ ~(Wait and see)~ EXTERN C0ATHF2 QUEST1-INTERITUS-1
  ++ ~(Interrupt the meeting)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FaceObject(Player1)
Wait(1)
ActionOverride("C0ATHF2",FaceObject(Player1))
SmallWait(5)
ActionOverride("C0ATHF1",FaceObject(Player1))
ActionOverride("C0ATHF3",FaceObject(Player1))
ActionOverride("C0ATHF4",FaceObject(Player1))
Wait(1)
ActionOverride("C0ATHF2",StartDialogNoSet(Player1))~ EXIT

CHAIN C0ATHF2 QUEST1-INTERITUS-1
~Yeah, yeah. You can count on us to give our best performance in this deal, since it's been crazy profitable. We've earned more in our short time working together than any of us have seen in a lifetime.~
== C0ATHF2 ~Soon, I reckon even the Shadow Thieves won't be looking down on us anymore. They'll either offer us a cozy place under their wing, or we'll build ourselves a nice little corner in the underworld to keep expanding our own business.~
== C0AQINT2 ~Your further ambitions in this land are your own matters to settle. We only expect results, and so long as they are without fault, you will continue to profit.~
== C0ATHF2 ~That sounds all fine and dandy to me, partner. I didn't think you foreigners would be so easy to work with.~
== C0AQINT2 ~I trust the authorities will not trace any evidence of Titan to you?~
== C0ATHF2 ~Don't worry. We've been thorough. They only have suspicions right now. By the time they get any real leads, we'll be all done.~
== C0AQINT2 ~...~
== C0AQINT2 ~Is that so? Then perhaps you can explain to me who that is.~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FaceObject(Player1)
Wait(1)
ActionOverride("C0ATHF2",FaceObject(Player1))
SmallWait(5)
ActionOverride("C0ATHF1",FaceObject(Player1))
ActionOverride("C0ATHF3",FaceObject(Player1))
ActionOverride("C0ATHF4",FaceObject(Player1))
Wait(1)
ActionOverride("C0ATHF2",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",25)~ THEN C0ATHF2 QUEST1-INTERITUS-2
~Huh? Wh—what?!~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",26)~
== C0ATHF3 ~Hang on, this lot looks familiar...~
== C0ATHF1 IF ~InParty("C0Aura")~ THEN ~Isn't that the gnome we caught in the alley?~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~I remember you thugs... but more importantly, these gnomes... they're—~
== C0AQINT2 ~It appears you have made a miscalculation in your... supposedly 'thorough' discretion. This does not bode well for our working relationship.~
== C0ATHF2 ~This... this is just an unfortunate coincidence. But we can sort this out. Just work with us to get rid of this lot and it'll be like nothing happened!~
== C0AQINT2 ~I think you're mistaken.~
== C0AQINT2 ~Since you have proven yourself incapable of remaining discrete, our association is now over. This is your concern, not ours.~
== C0ATHF1 ~What?~
== C0AQINT2 ~Withdraw.~
DO ~ClearAllActions()
StartCutSceneMode()
	Wait(1)
	Face(NW)
	ActionOverride("C0AQINT1",FaceObject("C0AQINT2"))
	ActionOverride("C0AQINT3",FaceObject("C0AQINT2"))
	Wait(2)
	ActionOverride("C0AQINT1",UseItem("potn10",Myself))
	ActionOverride("C0AQINT1",Wait(1))
	ActionOverride("C0AQINT1",DestroySelf())
	ActionOverride("C0AQINT3",UseItem("potn10",Myself))
	ActionOverride("C0AQINT3",Wait(1))
	ActionOverride("C0AQINT3",DestroySelf())
	UseItem("potn10",Myself)
	Wait(1)
	ActionOverride("C0ATHF2",StartDialogNoSet(Player1))
	DestroySelf()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",26)~ THEN C0ATHF2 QUEST1-INTERITUS-3
~Wha—no! Damn you, you gnome bastards, you can't just leave us to deal with this!~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",27)~
== C0ATHF3 ~Boss, this is bad... what do we do now?~
== C0ATHF2 ~Do I need to spell it out for you, moron? We get out of here, now!~
DO ~ActionOverride("C0ATHF1",EscapeAreaObject("Waypoint4"))
	ActionOverride("C0ATHF3",EscapeAreaObject("Waypoint4"))
	ActionOverride("C0ATHF4",EscapeAreaObject("Waypoint4"))
	EscapeAreaObject("Waypoint4")~
END
 IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-INTERITUS-3A
  ++ ~Stop! You're not getting away!~ DO ~ClearAllActions()
  										  StartCutSceneMode()
									 	  StartCutScene("c0acut8")~ EXIT 

CHAIN C0AURA2J QUEST1-INTERITUS-3A
~<CHARNAME>, we can't let them escape! After them!~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut8") ~EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",27)~ THEN C0ATHF1 QUEST1-INTERITUS-4
~D—dead end...~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",28)~
== C0ATHF2 ~You useless buffoon! How could you have led us this way?~
== C0ATHF3 ~It's over... we'll all be executed once we they catch us...~
== C0ATHF2 ~We're not done. Not yet! We still have one last trick up our sleeves.~
== C0ATHF1 ~Y—you mean... our supply? Boss, these ain't been tested yet, who knows what'll—~
== C0ATHF2 ~Would it be any worse than facin' the noose come the morn? Them gnomes said this stuff was better than the last batch. If there's any chance it gets us outta this mess, you think you shouldn't take it?~
== C0ATHF1 ~...~
== C0ATHF4 ~There's only two bottles, boss. Do we split 'em half and half?~
== C0ATHF2 ~No. You two use the lot. They say Titan gives the strength to move mountains, and if this one's as good as they claim, we'll make short work of those meddlers.~
== C0ATHF2 ~Drink up, boys!~
== C0ATHF4 ~...~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut9") ~EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",28)~ THEN C0AQMON1 QUEST1-INTERITUS-5
~EEEAAAAGGGGHHAGAHHAGAHAHAGGG...!~
DO ~AddJournalEntry(%Quest1_Entry_6%,QUEST)
SetGlobal("C0AuraBG2Quest1","GLOBAL",29)~
== C0AQMON2 ~GHHGHHHGHGHGHLKLKLKLKHHNNNNNNGGGHHH...!~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-INTERITUS-5A
IF ~!InParty("C0Aura")~ EXIT

CHAIN C0AURA2J QUEST1-INTERITUS-5A
~*gasp!*~
== C0AURA2J ~Their... their flesh... it's ripped itself apart from the uncontrollable growth...~
== C0AURA2J ~They've completely lost their sense of selves... between the pain, and the physical changes to their organs...~
END
  ++ ~Then there's no hope of restoring them?~ EXTERN C0AURA2J QUEST1-INTERITUS-5B
  ++ ~Let's just put them out of their misery, then.~ EXTERN C0AQMON2 QUEST1-INTERITUS-5C

CHAIN C0AURA2J QUEST1-INTERITUS-5B
~No... it's impossible. Titan has fundamentally altered the entirety of their bodies... and with the internal and external damage, it's hopeless.~
== C0AURA2J ~All we can do is try to end their suffering.~
EXTERN C0AQMON2 QUEST1-INTERITUS-5C

CHAIN C0AQMON2 QUEST1-INTERITUS-5C
~GHGLKLKLGGHKLKNNNNGGGHHH!~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",29)
    Dead("C0AQMON1")
    Dead("C0AQMON2")~ THEN C0AURA2J QUEST1-INTERITUS-5D
~I... I can't believe that just happened...~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",30)~
== C0AURA2J ~They were awful men, <CHARNAME>, but they didn't deserve to die like that. Having their bodies torn apart, then doing the same to each other out of agony...~
END
  ++ ~I know.~ + QUEST1-INTERITUS-5E
  ++ ~There was nothing we could've done.~ + QUEST1-INTERITUS-5F
  ++ ~Don't shed any tears for people like these.~ + QUEST1-INTERITUS-5E

CHAIN C0AURA2J QUEST1-INTERITUS-5E
~I... I want to stop this, <CHARNAME>. I want to find the people responsible for Titan, and bring them to justice... just so I never have to see skills like mine be used for... for monstrous things like this! We'll find those gnomes in red, and...~
= ~Those... gnomes in red...~
END
  ++ ~Do you know who they were?~ + QUEST1-INTERITUS-5G

CHAIN C0AURA2J QUEST1-INTERITUS-5G
~I... maybe. It was dark, but something about their outfits looked familiar. Give me a little time to think about it.~
= ~We should go back to Master Magnussen first, <CHARNAME>. Maybe he's discovered something from studying the Titan sample from before.~
DO ~StartCutSceneMode()
    Wait(2)
    ReallyForceSpellRES("C0AQEF3","C0AQMON2")
    ChangeStat("C0AQMON2",186,0,SET)
	  TriggerActivation("Exit",TRUE)
    Wait(1)
    StartDialogNoSet(Player1)~ EXIT

CHAIN C0AURA2J QUEST1-INTERITUS-5F
~No. But there's still things we can do. We can make sure this never happens again.~
EXTERN C0AURA2J QUEST1-INTERITUS-5E

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",30)~ THEN C0AURA2J QUEST1-30
~W—what?! How can he still move...? No... no, he wasn't even breathing anymore!~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",31)~
== C0AQMON2 ~Ggggrgrgnngghhh...!~
== C0AURA2J ~A–ah—!~
END
  ++ ~No!~ DO ~ClearAllActions()
  						   StartCutSceneMode()
						   StartCutScene("c0acut10") ~EXIT
  ++ ~Get back!~ DO ~ClearAllActions()
  						   StartCutSceneMode()
						   StartCutScene("c0acut10") ~EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",31)~ THEN C0AURA2J QUEST1-31
~*cough* What... what was that...?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",32)~
END
  ++ ~Aura! Are you alright?~ + QUEST1-31-1
  ++ ~Don't get so careless, you fool!~ + QUEST1-31-2

CHAIN C0AURA2J QUEST1-31-1
~I—I'm okay, I think... the explosion didn't get me... I'm just shaken...~
EXTERN C0AURA2J QUEST1-31-3

CHAIN C0AURA2J QUEST1-31-2
~R—right...~
EXTERN C0AURA2J QUEST1-31-3

CHAIN C0AURA2J QUEST1-31-3
~I'm sorry, <CHARNAME>, I couldn't have expected that to happen... for them to still move even after their organs have been destroyed... what a horrible creation Titan is.~
= ~Hmm? Wait... this smell... there's no mistaking it. This is smokepowder! Was it... was it from that bolt just now? But how could...~
END
  ++ ~Could it have been those gnomes we saw?~ + QUEST1-31-4
  ++ ~Just count yourself lucky that mysterious shooter was here to save you.~ + QUEST1-31-5
  ++ ~Let's not worry about that right now.~ + QUEST1-31-5

CHAIN C0AURA2J QUEST1-31-4
~Maybe... they were definitely Lantanese, from their accents and the way they dressed. But it wouldn't make much sense if it were them, right?~
= ~I have a feeling it's someone else... someone who's probably been watching our backs from the shadows. But I haven't a clue who it could be... so I guess there's no point wondering about it for now.~
EXTERN C0AURA2J QUEST1-31-6

CHAIN C0AURA2J QUEST1-31-5
~You're right. Regardless of who it might've been been, they just saved my life. I'll just take it to mean they're on our side, even if they didn't show themselves.~
EXTERN C0AURA2J QUEST1-31-6

CHAIN C0AURA2J QUEST1-31-6
~Let's go, <CHARNAME>. I'd rather get out of here as quickly as possible...~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",32)~ THEN C0AMAGN QUEST1-32
~Ahh, here's a familiar face. What brings you here now? Perhaps you've made ground on investigating this Titan business?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",33)~
END
  ++ ~You could say that. I encountered those who are responsible for distributing Titan in Athkatla. And... something worse than that.~ + QUEST1-32-1

CHAIN C0AMAGN QUEST1-32-1
~Well now, this does sound serious. Best you take your time and explain everything, then, my <PRO_GIRLBOY>.~
DO ~StartCutSceneMode()
Wait(2)
FadeToColor([30.0],0)
Wait(6)
FadeFromColor([30.0],0)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",33)~ THEN C0AMAGN QUEST1-33
~Hmm...~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",34)~
== C0AMAGN ~Yes... yes, I think I understand now. Dear, oh dear. I thought with my years of studying everything you could find written in words and beyond, nothing would surprise me anymore, and here I stand corrected.~
END
  ++ ~It's unbelievable that something like this could happen.~ + QUEST1-33-1
  ++ ~What do you mean by that?~ + QUEST1-33-2
  ++ ~Less meandering and more figuring out what to do next, old man.~ + QUEST1-33-3

CHAIN C0AMAGN QUEST1-33-1
~That is not quite what I meant, my <PRO_GIRLBOY>... well, I'll get to that in a moment.~
EXTERN C0AMAGN QUEST1-33-4

CHAIN C0AMAGN QUEST1-33-2
~I meant... well, let's leave that thought for now. I'll get to it in a moment.~
EXTERN C0AMAGN QUEST1-33-4

CHAIN C0AMAGN QUEST1-33-3
~Yes, of course. What to do next...~
EXTERN C0AMAGN QUEST1-33-4

CHAIN C0AMAGN QUEST1-33-4
~A new formula of Titan... hm, people turned into monsters... and a suspicious group of Lantanese gnomes... you are certain those gnomes were wearing red, yes?~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-33-5A
+ ~!InParty("C0Aura")~ + ~Yes. All of them wore dark red cloth, and their leader was wearing blood-red armor.~ EXTERN C0AMAGN QUEST1-33-5

CHAIN C0AURA2J QUEST1-33-5A
~That's right, sir. Even in the dark, you could tell. And the armor their leader wore... it's like it was painted with blood.~
EXTERN C0AMAGN QUEST1-33-5

CHAIN C0AMAGN QUEST1-33-5
~Well, there's no doubt about it then. They're Interitus. Seems like things have gotten rather unpleasant.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Interitus? So... they really are real, then? And you're familiar with them, sir?~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~Very real, I'm afraid, dear girl. And I know them well, though I'd rather I didn't.~
END
++ ~Who are these 'Interitus'?~ EXTERN C0AMAGN QUEST1-33-6

CHAIN C0AMAGN QUEST1-33-6
~They are an exceptionally extreme group originating from Lantan. Brilliant minds, many of them, though sorely misguided. As partisan against magic as you can be, in all the worst ways. Thinking about it, I suppose a city like Athkatla would be a suitable place to spread their roots.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~I've heard rumors about them... a long time ago, they were prominent enough to have a seat at the Ayrorch, until someone important in the organization was found responsible for a horrible catastrophe in Orlil... then, I never read anything about them past that.~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~Oh yes, my girl. I was still around during that time, and I remember clearly the chaos that followed, the acrid smell of melted flesh and smokepowder in the air... by all my ancestors, I doubt that was what the Wonderbringer sought when he bestowed his knowledge upon us mortals.~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~It was deemed an 'accident', officially, and those in the group who were found shed their colours and claimed to have changed their ways, but I knew better. They were never recognized as a respected organization again, but the influence of Interitus never truly went away.~
== C0AMAGN ~If those who are providing Titan to the black market are indeed Interitus, then no doubt this solution is based off Lantanese alchemy... troubling indeed. However, I can certainly tell you one thing, my friend. Under normal circumstances, that one fact should not be possible.~
END
++ ~What do you mean by that?~ EXTERN C0AMAGN QUEST1-33-7
++ ~Under 'normal' circumstances?~ EXTERN C0AMAGN QUEST1-33-7
++ ~I think you should explain yourself.~ EXTERN C0AMAGN QUEST1-33-7

CHAIN C0AMAGN QUEST1-33-7
~Well, I suppose this will require some context... ever since you brought me the sample of the Titan formula you discovered, I can confirm that, while the current composition is certainly unique, many of its traits share qualities with Lantanese concotions made in the past.~
= ~However... it is impossible. The research of the formula that this drug is based on, known as the Pythonic solution, has long been forbidden by the Ayrorch, and all mention of it has been wiped from academia decades ago.~
END
  ++ ~So studying it is illegal?~ + QUEST1-33-7A
  + ~OR(2) CheckStatGT(Player1,15,INT) CheckStatGT(Player1,15,WIS)~ + ~So whoever created Titan must have been involved in its original research?~ + QUEST1-33-7B

CHAIN C0AMAGN QUEST1-33-7A
~Oh, very illegal indeed. Not that there is much risk of any Lantanna knowingly studying it nowadays. Even under the infinitesimal chance that they knew its existence, they would have nowhere to start from. The Ayrorch were quite thorough with erasing everything involved with the project.~
EXTERN C0AMAGN QUEST1-33-8

CHAIN C0AMAGN QUEST1-33-7B
~You catch on quickly, dear <PRO_GIRLBOY>. Yes, that is the only logical conclusion, is it not? I can promise you, there is next to no chance of anyone coming across knowledge of the original project by chance. The Ayrorch have long erased anything involved with the project.~
EXTERN C0AMAGN QUEST1-33-8

CHAIN C0AMAGN QUEST1-33-8
~However, even compared to its original form, this 'Titan' is a very, very complex piece of alchemy, indeed... more than your simple apothecary would be capable of identifying and replicating. In fact, I doubt even most of the alumni of the Sambaran academy would begin to grasp the complexity without several additional years of study.~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~Even you, Aurelia, my dear, brilliant as you are, haven't quite figured it out yet, have you?~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~I... no, sir. I haven't.~
== C0AMAGN ~To put it simply, this is a master of the craft, young <CHARNAME>. They'd have to have a fully understanding of anatomy, medicine, even poisons... why, I doubt you could find three people within this city who could even tell you the first steps of how to create Titan even with the product right in front of them.~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-33-9A
++ ~Then where could we possibly find such a master?~ EXTERN C0AMAGN QUEST1-33-10
+ ~OR(2) CheckStatGT(Player1,15,INT) CheckStatGT(Player1,15,WIS)~ + ~But... you could, couldn't you?~ EXTERN C0AMAGN QUEST1-33-11

CHAIN C0AURA2J QUEST1-33-9A
~Then... where in this city could we possibly find somebody like that?~
EXTERN C0AMAGN QUEST1-33-10

CHAIN C0AMAGN QUEST1-33-10
~Well, you can be certain the possibility is not zero. Those of such ability do exist. Me, for instance.~
END
++ ~You?~ + QUEST1-33-12
++ ~Is this a confession?~ + QUEST1-33-12

CHAIN C0AMAGN QUEST1-33-11
~Oho! Clever, my <PRO_GIRLBOY>. You said it faster than I could say it myself.~
EXTERN C0AMAGN QUEST1-33-12

CHAIN C0AMAGN QUEST1-33-12
~Yes, I could indeed concoct a perfect replica of Titan if I tried. Though admittedly, it is less confidence in my ability and more my experience that is most relevant here. After all, the fool responsible for its precursor formula, the Pythonic solution, is myself.~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~I presume how you must have found it strange, young Aurelia, that... you'll pardon me for my egoistic self-flattery... as supposedly accomplished as I am, you have never seen a single work of writing produced under my name in Lantan?~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Now that you mention it, sir, I haven't... I've never read any books authored by you, sir.~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~Well, I'm certain you have, and simply didn't realize it. The books that I had a hand in writing have had my name taken off them for years now, after all... and that one book, in particular, was deemed "research made on unethical grounds", and you won't find it at any institution of knowledge anywhere on Lantan.~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~It was one of the many conditions the Ayrar set for my exile, you see.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Your... exile? You mean, you didn't leave Lantan by choice?~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~Now, don't be mistaken. I accepted my exile voluntarily, as it was an appropriate consequence of my own mistakes... in masterminding that arrogant project.~
== C0AMAGN ~I was indeed responsible for the research behind the creation of Titan's original formula. For the sin of attempting to upstage nature by creating a formula that may allow us to exceed the limits placed upon us, I was exiled from Lantan by the Ayrorch. But the decision to wipe my name from all of Lantan's academia, and destroy my research on my most regretful project was my own...~
== C0AMAGN ~It was because of my failure that I realized how nature had imposed limits upon we mortals for a reason. And so I took measures to ensure those after myself, young minds with talent, would never be led to fall prey to the same mistakes. And my epiphany also spared me from the worse fate of being incarcerated in the Poenitens Sanctum, the place meant for those too dangerously imaginative for their own good.~
END
  ++ ~But your original research was somehow used for Titan's creation anyways.~ + QUEST1-33-12A
  ++ ~Which means you're partly responsible for all of this.~ + QUEST1-33-12B
  ++ ~That's not relevant right now. We need to know who's creating these dangerous concoctions right now.~ + QUEST1-33-12C

CHAIN C0AMAGN QUEST1-33-12A
~Yes, to my consternation, but sadly... not to my surprise.~
EXTERN C0AMAGN QUEST1-33-13

CHAIN C0AMAGN QUEST1-33-12B
~Oh, yes, and in more ways than one.~
EXTERN C0AMAGN QUEST1-33-13

CHAIN C0AMAGN QUEST1-33-12C
~Indeed, that is the more pressing issue right now, isn't it? Sadly, I fear even our current predicament has more to do with me than I wish.~
EXTERN C0AMAGN QUEST1-33-13

CHAIN C0AMAGN QUEST1-33-13
~I should have realized sooner. It seems this research has caused me to make the same mistake twice... the first time from curiosity, and the second time, sentimentality.~
== C0AMAGN ~Though I claimed to have destroyed all of my past research... I could not stop myself from preserving a copy of my magnum opus, "L'an Elementume Vitaer", and keeping it at my side after my exile. All this time, it has been here with me, a piece of forbidden knowledge.~
== C0AMAGN ~For the longest time, none but myself have known of its existence. But I did show it to one I considered a like-minded friend... I should have known better.~
== C0AMAGN ~Asclepios is the one you are after. Of all the men I know, only he possesses the talent to replicate and continue my work.~
DO ~AddJournalEntry(%Quest1_Entry_7%,QUEST)~
END
++ ~Asclepios? The reputed "greatest healer in all the city"?~ + QUEST1-33-14
++ ~The man who helped Sean's father? He's the one behind making Titan?~ + QUEST1-33-14

CHAIN C0AMAGN QUEST1-33-14
~I can perhaps understand his state of mind. Asclepios Cohval is a seeker of knowledge, like myself... and, as a believer that knowledge is itself neither good nor evil, considers the inherent morality of pursuing forms of knowledge secondary.~
= ~That is how he can achieve such exemplary abilities of healing... and naturally, his mastery of alchemy, of poisons and the working of the body, are equally unmatched.~
= ~When my studies on that silver concoction led me to realize just what you had brought to me, I finally opened my copy of "L'an Elementume Vitaer" for the first time in many long years... and it was as though the horrors of the past had finally caught up to me.~
= ~Ah... ha ha, Asclepios, you poor, poor man... how did it come to this?~
END
++ ~He's not worthy of pity, not after what he's done.~ + QUEST1-33-15
++ ~I need to stop him. Where can he be found?~ + QUEST1-33-16
++ ~So what do we do now?~ + QUEST1-33-16

CHAIN C0AMAGN QUEST1-33-15
~Aye... I understand that, of course. It's just that... speaking to him, I felt I had found my mirror image... and, perhaps I indeed had in my entirety, at my best and worst.~
EXTERN C0AMAGN QUEST1-33-16

CHAIN C0AMAGN QUEST1-33-16
~Asclepios remains in his laboratory when not called upon for healing, and nobody has ever seen where it is... myself included. Our meetings were always here, spending the hours talking over a kettle of tea.~
= ~You should talk with young Gilbert. As his student, perhaps he knows where it is, and I believe the dear boy is innocent himself of any wrongdoing. Tell him the truth. He will understand what is best.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",34)~ THEN C0AQMAN QUEST1-34
~Oh! I... I know you! You were around when I brought my father to the healer. Do you remember me?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",35)~
END
++ ~You're Sean, right? How's your father doing?~ + QUEST1-34-1
++ ~Yes, I remember you. What are you doing back here?~ + QUEST1-34-1
++ ~I don't have time for you right now.~ + QUEST1-34-2

CHAIN C0AQMAN QUEST1-34-1
~My father... it's about my father again. He's gone! The... the healer, master Asclepios, he came to our home and took him away!~
== C0AQMAN ~I... I asked him why he had come, and he told me my father needed looking at for his condition, and he had to come to his home. Father was still sick, so I let him go, but the more I think about it, the more wrong it felt!~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Oh, no...~
== C0AQMAN ~Since then, I haven't heard sign of either of them! I decided to come here to find Gilbert, for surely he knows where his master lives and can tell me where my father is!~
END
++ ~This is bad news... I fear Asclepios took your father for concerns other than his health.~ + QUEST1-34-3
++ ~You've made a terrible mistake, Sean. That man was the one behind Titan all along.~ + QUEST1-34-4

CHAIN C0AQMAN QUEST1-34-2
~Wait, wait! I wasn't expecting to meet you here, but... maybe it's a stroke of luck that I did! Just allow me a moment, please!~
EXTERN C0AQMAN QUEST1-34-1

CHAIN C0AQMAN QUEST1-34-3
~He... had other reasons for taking my father? Please, help me understand!~
END
++ ~He's been secretly making Titan, which was what poisoned your father to begin with.~ + QUEST1-34-5
++ ~I don't have time to explain right now. I'm looking for Asclepios too, so just leave the search to me.~ + QUEST1-34-6

CHAIN C0AQMAN QUEST1-34-4
~W—what? "Titan"? What do you mean?~
END
++ ~It's a long story, but it's a dangerous drug. It's what poisoned your father.~ + QUEST1-34-5
++ ~I don't have time to explain right now. I'm looking for Asclepios too, so just leave the search to me.~ + QUEST1-34-6

CHAIN C0AQMAN QUEST1-34-5
~Oh... gods. So that's what happened... And I... I was so grateful to him for seeing my father slowly recovering...~
= ~That man must be brought to justice! Where is he? What can I do to help you?~
END
++ ~I'm looking for him too. You should wait here.~ + QUEST1-34-6
++ ~Just don't get in the way. I'll find him.~ + QUEST1-34-6

CHAIN C0AQMAN QUEST1-34-6
~I... I understand, <PRO_SIRMAAM>. I am extremely worried, but... I will leave this to you. Please, find him and my father!~
EXIT

CHAIN C0AASCS QUEST1-35
~Master Asclepios does not wish for those in need to find him at his home. He comes here on occasion, but at other times, I assure you that my skills of healing are sufficient for most things.~
END
++ ~I'm not in need of healing. I want to talk to him about Titan.~ + QUEST1-35-1
++ ~Listen to me. Your master is the one creating Titan. I need to stop him.~ + QUEST1-35-2
++ ~Bring me to your master's home right now, you ignorant fool!~ + QUEST1-35-3

CHAIN C0AASCS QUEST1-35-1
~Ah, has there been new revelations on the strange Titan concoction? My master has not told me of any new insights from his study.~
END
++ ~And he likely won't, given what he knows. He's the one making it to begin with!~ + QUEST1-35-2

CHAIN C0AASCS QUEST1-35-2
~My master...? No, surely there must be some mistake.~
END
++ ~Ask Professor Magnussen yourself if you don't believe me. He's the only one who could have done it.~ + QUEST1-35-4
++ ~You're the one who's boasted of your master's skills being unmatched. Do you think he's not capable?~ + QUEST1-35-4

CHAIN C0AASCS QUEST1-35-3
~Calm yourself, friend. Master Asclepios spends every waking hour at work, whether in healing or the research of new medicines. Without good enough cause, I would not disrupt him. What is of such importance that you must see him?~
END
++ ~"Research of new medicines"? Like the Titan drug he's been making?~ + QUEST1-35-2
++ ~He's been making Titan in his laboratory this entire time. He needs to be stopped!~ + QUEST1-35-2

CHAIN C0AASCS QUEST1-35-4
~This... you are certain of this, friend? There can be no mistake that our master is a culprit?~
END
++ ~None. He's the one responsible.~ + QUEST1-35-5
++ ~If there is any doubt, I want to meet him and see how he explains himself.~ + QUEST1-35-5

CHAIN C0AASCS QUEST1-35-5
~I... I believe in the integrity of my master's dedication to healing and medicine. And yet... with his ability, I do not believe it beyond him.~
= ~My master lives in an old house not far from here, indistinguishable from the rest from the outside. He will be at home, as always... I can bring you there.~
END
++ ~Take me there.~ + QUEST1-35-6

CHAIN C0AASCS QUEST1-35-6
~Very well. I truly hope your conclusions are wrong... but we must be certain. Follow me.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",36)
	ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut11")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",36)~ THEN C0AQDAD QUEST1-36
~N—no... no more, doctor, p... please, I beg of you...~ [BEGGR05]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",37)~
== C0AASCL ~The solutions I have injected into your body are still processing the existing toxins that infest your internal organs. Were I to prematurely apply the antidote meant for final treatment, your death would be assured. Is that what you wish?~
== C0AQDAD ~I... I do not seek death, doctor... but... this pain... perhaps it would be a blessing...~
== C0AASCL ~Your condition is severe, but it is not beyond my ability to save. You need not die today, so long as you endure the physical pain. And you have reason to live on.~
== C0AQDAD ~Why... why are you doing this? You... you promised to save me, yet... if you are a savior, why... do you look upon my suffering with such... such—~
== C0AASCL ~My responsibility is to your life. To shy away from the purpose of my work because of the symptoms would be a betrayal of my duty. Nothing you have experienced so far is outside of my expectations, and so, as long as I do not falter, neither will your eventual healing.~
== C0AASCL ~Now, do not struggle. It is time for the next dose.~
== C0AQDAD ~But... but I... aaaAAAGGHH!~ [BEGGR06]
END
++ ~Stop. Put down the needle. Now.~ EXTERN C0AQDAD QUEST1-36-1
++ ~You're a sick, twisted bastard.~ EXTERN C0AQDAD QUEST1-36-1

CHAIN C0AQDAD QUEST1-36-1
~H... help me...~
== C0AASCL ~...~
== C0AASCL ~You arrived sooner than expected.~
DO ~StartCutSceneMode()
Wait(1)
ForceSpellRES("C0AQEF4",Player1)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",37)~ THEN C0AASCL QUEST1-37
~Fascinating.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~<CHARNAME>!~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",38)~
END
++ ~What did you just use on me?~ EXTERN C0AASCL QUEST1-37-1
++ ~That dart was... poisoned?~ EXTERN C0AASCL QUEST1-37-1

CHAIN C0AASCL QUEST1-37-1
~Marek was an excellent student. His knowledge of poison flawless, of antidotes, even more so. It would seem that particular formula no longer has any effect upon you, <CHARNAME>, child of Bhaal. Or perhaps it is your divine blood which has bolstered your immune system?~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-37-1A
IF ~InParty("C0Aura")~ EXTERN C0AASCL QUEST1-37-2

CHAIN C0AURA2J QUEST1-37-1A
~Are you alright, <CHARNAME>?~
END
++ ~I think so... I don't feel any different.~ EXTERN C0AASCL QUEST1-37-2
++ ~It looks like that poison won't work on me a second time.~ EXTERN C0AASCL QUEST1-37-2

CHAIN C0AASCL QUEST1-37-2
~A pity that he ultimately took such an unsavory path, for it led him to a destructive end. Such is the way of the underworld. I should have given him more incentive to stay, and follow a more productive path.~
END
  ++ ~Marek... the Iron Throne's assassin was your student?~ + QUEST1-37-3
  ++ ~Looks like I have a bigger quarrel with you than I thought.~ + QUEST1-37-3
  ++ ~I have you to thank for that poisoning incident at Baldur's Gate?~ + QUEST1-37-3
  ++ ~Your profession of poisoning and torturing desperate folk is considered productive?~ + QUEST1-37-4

CHAIN C0AASCL QUEST1-37-3
~Indeed. You could say I am indirectly to blame for some of your suffering in your past ventures, <CHARNAME> of Candlekeep, and for that, you have my sincere apology. It was never my intent for my talents as an apothecary to be used in such a matter.~
= ~The loss of my former apprentice was regrettable, but I understood what became of him was likely inevitable when he abandoned his studies to train under the Night Knives. Had I taken him away from Sembia sooner, things could have been different...~
= ~But that is not what you are here for, is it? Those past conflicts mean nothing to what you are truly seeking now.~
EXTERN C0AASCL QUEST1-37-4

CHAIN C0AASCL QUEST1-37-4
~What you see before you no doubt seems an atrocity. I do not blame you. Few have the resolve to see past the macabre side of scientific healing. It is why I prefer to spare this sight to those who have cause to care for the treated.~
== C0AQDAD ~H—help... me...~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~You...~
== C0AASCL ~No doubt you view me as the enemy. That is logical. It is likely we must come to conflict, but before that comes to pass, I would request that I share my perspective.~
END
  ++ ~What reason could you possibly give to justify your actions?~ + QUEST1-37-5
  ++ ~Fine. Explain yourself.~ + QUEST1-37-5
  + ~InParty("C0Aura")~ + ~I have no interest in hearing your explanation. Stand down, or defend yourself.~ EXTERN C0AURA2J QUEST1-37-6

CHAIN C0AASCL QUEST1-37-5
~I hold no intentions of understating the weight of my deeds. Indeed, I have indulged in practices which any reasonable man would deem unethical and heartless. My attempts and failures have led to suffering I could not hope to undo. But I do so with the intention of overcoming a foe which has plagued we mortals for as long as history can remember.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Overcoming... a foe? What do you...~
== C0AASCL ~Disease, the harbinger of suffering and death. Those who study the natural order claim it, like many things, is a necessary aspect of life, yet do we not consider the mission to eradicate it truly righteous and just?~
== CERNDJ IF ~InParty("CERND")~ THEN ~Nature is often deemed unkind, yet it is the trials that the ailing must suffer that lead to greater fortitude in those. You see only a piece of the whole, doctor, and thus regardless of your intent, you are misguided.~
== C0AASCL ~I have travelled far and wide to learn all there is of healing, of the mortal body and the natural forces that may heal or harm it... or in some cases, both. There is a saying I have learned from Shou healers... "to fight poison with poison", so to speak, and make use of that which harms as a weapon against harm itself.~
== C0AASCL ~Though I have committed worse acts than others of my path, I have done so because the accepted methods are insufficient for the purposes of truly combating the suffering that disease has inflicted upon those undeserving. As I know it, my greatest fault has not been the deliberate pain I have inflicted for the sake of my research, but my failure.~
== C0AQDAD ~Nn...ugh...~
== C0AASCL ~...Too many are given up for lost due to the inadequacy of those who claim to understand healing. My desire is to save them. No matter the cost that must be paid.~
END
  ++ ~The wish to find ways to save others is admirable, but it doesn't justify the suffering you've caused in the process.~ + QUEST1-37-7
  ++ ~Is that how you absolve yourself? Even when you fail to save the people you've hurt yourself with your experimentation?~ + QUEST1-37-7
  ++ ~No matter what you say, you're still a criminal, and I plan to treat you as such.~ + QUEST1-37-7

CHAIN C0AURA2J QUEST1-37-6
~W—wait, <CHARNAME>. I... want to hear what he has to say. I know his experiments are completely wrong, but I don't believe him to be the sort to do it without reason. I want to know why he did this, even if it doesn't change what we have to do.~
EXTERN C0AASCL QUEST1-37-5

CHAIN C0AASCL QUEST1-37-7
~You speak of my involvement with Titan. It is true... the extremist Lantanese faction, Interitus, came to me with an offer upon learning of my association with professor Caridius. They hoped that my knowledge, along with their resources, would be the key to perfecting Titan into a beneficial compound that would provide all of its virtues, and none of its flaws.~
= ~A just man would have chosen to expose their plots. But I am a doctor, and even more a researcher. My duty is to advance the field of healing so that it may benefit mankind beyond my lifetime. In the end, I chose to assist in their research under the hopes that something good would come of what they had to offer, while saving as many lives as I could from their test subjects.~
= ~Though you may see it as otherwise, the purpose of Titan, and the experiments that preceded such a difficult project, has never been to harm or inflict death. With his original formula, Caridius attempted to turn the pinnacle of the mortal body from theory to reality, but his efforts had resulted in nothing but failure, despite his many years of experience.~
= ~I do not mean to disparage his efforts. As a fellow researcher, I truly sympathize with the good professor's plight. He wished to create a formula which would allow the average person to exceed their limits, and eliminate all flaws and defects that plague the unfortunate, whose lives are cut unfairly short by the cruelty of the natural world, and the limits of the body.~
= ~If it were to succeed, the future... the lives of many... the suffering you see in the current state of the Realms would seem a pittance, by comparison.~
= ~My logic may abhor you, and rightfully so. But for better or worse, I have long distanced myself from standard conventions of morality, so that what I hope to truly achieve may yet be accomplished.~
END
  ++ ~Do you think this explanation is enough to convince me to spare you?~ + QUEST1-37-8
  ++ ~That's enough. Nothing you say will change the fact that you must be stopped.~ + QUEST1-37-8
  ++ ~Get to the point.~ + QUEST1-37-9

CHAIN C0AASCL QUEST1-37-8
~I do not expect to convince you for the sake of my life. But I do ask one thing of you.~
EXTERN C0AASCL QUEST1-37-9

CHAIN C0AASCL QUEST1-37-9
~This is my one wish—regardless of how you intend to deal with me, I hope that my knowledge and research may be spared. If my own efforts must end today, I do not hope for what I have already accomplished to go to waste.~
= ~Everything here must serve the purpose in which I built it for, or else all the harm I have done will have been for naught. If you can assure me of this, I will not regret even my own death.~
END
  ++ ~Your research is tainted with blood. It deserves to be destroyed.~ + QUEST1-37-10
  ++ ~What happens to your work is none of my business.~ + QUEST1-37-10
  ++ ~I have to stop you, but I'll respect your last wish.~ + QUEST1-37-11

CHAIN C0AASCL QUEST1-37-10
~So be it. Though I abhor taking lives, I have no choice but to defy you for the sake of everything I have built. I will make this as painless as possible.~
END
IF ~!InParty("C0Aura")~ DO ~ReallyForceSpellRES("C0AUSP01",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
Enemy()~ EXIT
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-37-12

CHAIN C0AASCL QUEST1-37-11
~That will do. Let us do what must be done, then.~
END
IF ~!InParty("C0Aura")~ DO ~ReallyForceSpellRES("C0AUSP01",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
Enemy()~ EXIT
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-37-12

CHAIN C0AURA2J QUEST1-37-12
~Please wait. I just... have one thing to ask you.~
== C0AASCL ~I am listening.~
== C0AURA2J ~Just... for how long have you seen things this way, master Asclepios...~
== C0AURA2J ~...no.~
== C0AURA2J ~I should refer to you as... Asclepios Cohval, Grand Alchemist of Porthia, founder of the Twenty-Seven Theories of Alchymia. You are regarded as one of the greatest modern scholars of medicine and herblore within the Realms. I believed you left Halruaa due to simple ideological differences with your magisters... now I see that it's far more than that.~
== C0AASCL ~It seems that you have read my old works, and know a little of my past, Aurelia Glimmershine.~
== C0AURA2J ~I respect your works as a physician. Despite what you have done, I... still wouldn't know as much as I do now of medicine if not for your research.~
== C0AASCL ~...~
== C0AASCL ~Yes. Like professor Caridius, I was exiled from my homeland of Halruaa for my unethical practices. Yet while the professor regretted his actions and chose his fate of his own accord, I have never deviated from my path despite the opposition. Knowing the truth, he must be disappointed... as well as you.~
== C0AURA2J ~I believe that everything you've said is the truth. But I could never follow that same path. I... can't help but pity you for whatever made you fall this low.~
== C0AASCL ~No. You may feel disappointment, but... you have no right to feel pity for me.~
== C0AURA2J ~What?~
== C0AASCL ~You have yet to understand that is you who are worthy of pity, Aurelia... despite your talent, you are bound to the same limitations which once held me, and led me to failure and disgrace. Those without the gift have no capacity to understand, yet you... you lack the strength to accept what you see, and use that which is within your grasp.~
== C0AURA2J ~No... no, I only—~
== C0AASCL ~Your state betrays your true thoughts. The subtle, yet panicked breathing, the whitening of your knuckles as you grasp onto your bow... you consider what I have done as being *wrong*, yet you cannot see an alternate path forwards which would accomplish what you hope for, one that is truly *right*.~
== C0AASCL ~You lack the argument to truly deny my perspective as wrong, just as you lack the determination to properly turn your weapon against me to prove it. That is your failing, one which will deny you any progress in your path for as long as you carry that weight on your shoulders.~
END
  ++ ~Shut up. Aura understands the weight of responsibility as much as knowledge. It's a far heavier burden than you bear, Asclepios.~ EXTERN C0AURA2J QUEST1-37-13
  ++ ~We don't need to debate you. Your evils are enough cause to see you dead today.~ EXTERN C0AURA2J QUEST1-37-14
  ++ ~Are you done talking yet? You might be able to scare Aura with your blather, but I'm not so easily defeated by empty words.~ EXTERN C0AURA2J QUEST1-37-14

CHAIN C0AURA2J QUEST1-37-13
~Thank you, <CHARNAME>, but I'm fine. I just needed a reminder... thank you for encouraging me.~
EXTERN C0AURA2J QUEST1-37-14

CHAIN C0AURA2J QUEST1-37-14
~...~
== C0AURA2J ~I can't deny that what you're saying is true. I struggle too much with finding the balance between my desire for knowledge and doing what's right... it's for that reason that, no matter how hard I try, I may never reach what those like you, or professor Caridius, or the greatest minds of the Realms could accomplish.~
== C0AURA2J ~And... I know that not being able to achieve what I'm truly capable of does haunt me deep inside. Maybe I've reached my limit as a researcher, but... I can't stop trying. I can't let all those who are in doubt like me fall into a path like yours.~
== C0AASCL ~I see.~
== C0AURA2J ~Forgive me, master Asclepios. It's not that I can't understand your reasoning. I know it's what you believe, because every other path has failed you. But I don't believe that yet. And... that's why I have to stop you!~
== C0AASCL ~So be it. Though our roads differ, I can admire your conviction. But it is because of such differences that we must come into conflict here. I truly regret this, but it must be done.~
DO ~ReallyForceSpellRES("C0AUSP01",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Defeat","LOCALS",1)~ THEN C0AASCL QUEST1-DEFEAT
~Ngh... so it seems the tales of your accomplishment are nothing less than the truth. It was clearly an act of hubris to consider victory in my circumstances.~
= ~My specialty is in working with life, not death. Very well... it is clear that resistance is futile. I surrender.~
END
  + ~!Dead("C0AQDAD")~ + ~Good. You'll be brought to the authorities, and get the justice you deserve.~ + QUEST1-DEFEAT-1
  + ~Dead("C0AQDAD")~ + ~Good. You'll be brought to the authorities, and get the justice you deserve.~ + QUEST1-DEFEAT-2
  + ~!Dead("C0AQDAD")~ + ~I have no interest in sparing you. Prepare to die!~ + QUEST1-DEFEAT-1
  + ~Dead("C0AQDAD")~ + ~I have no interest in sparing you. Prepare to die!~ + QUEST1-DEFEAT-2

CHAIN C0AASCL QUEST1-DEFEAT-1
~Do what you will. But you should not forget about the condition of the patient next to us. It seems I can no longer treat him as is needed, but another must take up the task in my stead.~
EXTERN C0AASCL QUEST1-DEFEAT-3

CHAIN C0AASCL QUEST1-DEFEAT-2
~Do what you will. I only regret that it appears though the patient paid the price for our meaningless conflict. It is not what he deserved.~
EXTERN C0AASCL QUEST1-DEFEAT-3

CHAIN C0AASCL QUEST1-DEFEAT-3
~How tragic that it must all end this way...~
END
IF ~!InParty("C0Aura")~ DO ~ClearAllActions()
    StartCutSceneMode()
    StartCutSceneEx("C0ACUT12",TRUE)~ EXIT
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-DEFEAT-4

CHAIN C0AURA2J QUEST1-DEFEAT-4
~Wait...! <CHARNAME>, what is that...?!~
DO ~ClearAllActions()
    StartCutSceneMode()
    StartCutSceneEx("C0ACUT12",TRUE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",39)~ THEN C0AURA2J QUEST1-39
~*cough*... *cough*... huff... ugh... oh, what an overwhelming incapacitant... it still hurts to breathe in...~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",40)~
= ~<CHARNAME>... <CHARNAME>, are you awake?~
END
  ++ ~I... am, yes. My vision's still blurry, though.~ + QUEST1-39-1
  ++ ~Never mind that. What happened to Asclepios?~ + QUEST1-39-2

CHAIN C0AURA2J QUEST1-39-1
~It should be fine... it looks like whatever that was, it wasn't fatally poisonous. There shouldn't be any lasting effects... but I'll do a proper checkup later when I have a chance. As for Asclepios, he...~
EXTERN C0AURA2J QUEST1-39-2

CHAIN C0AURA2J QUEST1-39-2
~He... he got away. I'm still not sure what happened... that phantom just appeared when we had him subdued, and did... something. The last thing I remember was seeing him fade into the mist that we were surrounded in.~
= ~Never mind that now, though. We're alive, at least. But... the old man... that poor man's father...~
DO ~ClearAllActions()
    StartCutSceneMode()
    MoveToPoint([583.262])
    SmallWait(1)
    Face(SE)
    Wait(1)
    StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",40)
Global("C0AuraBG2Quest1DeadMan","GLOBAL",0)~ THEN C0AURA2J QUEST1-40
~He's... he's dead.~
DO ~SetGlobal("C0AuraBG2Quest1DeadMan","GLOBAL",1)~
= ~It looks like he was killed during the struggle. I can't believe it... was it the mist that suffocated him to death? Or did we accidentally... no, we couldn't have...~
= ~We didn't manage to accomplish anything, <CHARNAME>. The person responsible for all this escaped... and there's an innocent man dead in front of us.~
END
  ++ ~I'm sorry. I feel like we failed, too.~ + QUEST1-40-1
  ++ ~Just another dead body. I'm not too torn up about it.~ + QUEST1-40-1

CHAIN C0AURA2J QUEST1-40-1
~I know we did our best, but... I haven't felt this hopeless in a long time. As though I just hate my lack of strength.~
== C0AURA2J ~...I wonder... if that's how he felt... for whatever it was that made him feel he needed to go this far...~
== C0AURA2J ~I want to take a closer look at this man, <CHARNAME>. He must have been suffering from something truly terrible, and I need to know. I have to.~
== C0AURA2J ~...~
== C0AURA2J ~Th–this is...~
== C0AURA2J ~...'Kusoyarou'.~
== JAHEIRAJ IF ~InParty("JAHEIRA")~ THEN ~This is... a truly horrific blight upon this man's flesh. One which must have amounted to unimaginable pain.~
== CERNDJ IF ~InParty("CERND")~ THEN ~I have seen such conditions upon the skins of wild beasts in the past. The pain drives them to rage... and that is but the beginning.~
== EDWINJ IF ~InParty("EDWIN")~ THEN ~Fascinating. The skin is dead and rotting, even as the rest of the man lives... or lived, once.~
== AERIEJ IF ~InParty("AERIE")~ THEN ~B-Baervan preserve us! The skin... it's as though it's already long dead! How much suffering would this poor man have been though...?~
== C0AURA2J ~Look, <CHARNAME>. This... discolored, greying and scabrous skin. This is... in Lantan, we know this as 'living petrifaction'—a rare, horrible mutation in which living flesh undergoes a particular necrosis.~
== C0AURA2J ~First, your skin becomes as though leather... then, gradually, inevitably, it hardens and calluses, resembling bark, and eventually stone... and the process is excruciatingly painful, until you eventually lose all feeling but pain in the affected limbs... as the petrifaction spreads throughout your entire body.~
== C0AURA2J ~What's worse, it has no known cure. And because it's more akin to a mutation than a disease, even healing magic fails to restore the dying flesh... it's one of the worst ways to suffer. Some resort to flaying their own skin in desperation. Most eventually go mad from the agony.~
== C0AURA2J ~This is... the first time I've ever seen it. It's... almost like learning the most terrifying monsters in the stories you've been told were real all along.~
== C0AURA2J ~...~
END
  ++ ~Wait, don't touch it!~ + QUEST1-40-2
  ++ ~What are you doing?~ + QUEST1-40-3
  ++ ~Don't get close to me if you plan to touch that.~ + QUEST1-40-3

CHAIN C0AURA2J QUEST1-40-2
~It's alright, <CHARNAME>. This condition isn't contagious. I won't... be affected. Not physically.~
EXTERN C0AURA2J QUEST1-40-3

CHAIN C0AURA2J QUEST1-40-3
~I... what am I even doing? There's nothing I can do here. Why am I even pretending I can still help?~
= ~What... what could we have done, <CHARNAME>? Even if he was still alive, even if we had stopped Asclepios... this man would still have been suffering for the rest of his life. I... I don't know...~
END
  ++ ~I don't know either. But it's not our fault.~ + QUEST1-40-4
  ++ ~Maybe one day there'll be a way to help others like him. But we can't do more harm in the process.~ + QUEST1-40-5
  ++ ~Just be happy you're not the one who has to deal with this sort of pain.~ + QUEST1-40-6

CHAIN C0AURA2J QUEST1-40-4
~Maybe I shouldn't blame anyone, not for something like this. Not even...~
EXTERN C0AURA2J QUEST1-40-7

CHAIN C0AURA2J QUEST1-40-5
~What if nobody ever finds a way, <CHARNAME>? What if the only way was...~
EXTERN C0AURA2J QUEST1-40-7

CHAIN C0AURA2J QUEST1-40-6
~How can I be happy, <CHARNAME>? How many people have ended up like this, begging to be saved, but...~
EXTERN C0AURA2J QUEST1-40-7

CHAIN C0AURA2J QUEST1-40-7
~...just how many have there been, that couldn't be saved? How many before...~
= ~...I need to get out of here, <CHARNAME>. Let's just... go back. Please.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",40)~ THEN C0AEX1 QUEST1-40
~That was quite a brush with death, Asclepios. Though you seem not long for the world regardless. It seems I was just a little too late.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",41)~
== C0AASCL ~*cough*... *cough*~
== C0AASCL ~I doubt that. This is but another of the twisted games you play. To see me on the brink of death so that you may offer hope with your own hands.~
== C0AEX1 ~Hehe... you see through me as always.~
== C0AASCL ~Unfortunately for you, I have little time to waste here. There is still... *cough cough*~
== C0AEX1 ~You're going to go back? You'd go to your death, and so soon after I just saved you.~
== C0AASCL ~I have a patient. My duty is to the ailing.~
== C0AEX1 ~He's already dead.~
== C0AASCL ~...~
== C0AEX1 ~Don't feel responsible. There's no guarantee you would have saved him regardless. Living petrifaction is an agonizing death—a quick end is a form of mercy in itself, don't you think?~
== C0AASCL ~Enough... I have precious little time left as it is. I do not intend to waste what remains debating our professional ethics with each other.~
== C0AEX1 ~Fair enough. I believe you owe me something for saving your life, though.~
== C0AASCL ~The last variant of Titan... so be it. Take it, though I did not expect this apparition of yours to be more than a simple illusion.~
== C0AEX1 ~Courtesy of a little assistance from a new friend. Those obsolete fools in Interitus may believe otherwise, but magic has its uses.~
== C0AASCL ~Hmph.~
== C0AASCL ~It has yet to be perfected, despite my efforts. I regret that... *cough* I will not live to see that day of accomplishment.~
== C0AEX1 ~Oh...? You're already resigned to death, my friend? And after I spared the effort to make an appearance sooner than expected, just to help you.~
== C0AASCL ~Is it my life you value? Or your own that you fear for, once you can no longer benefit from my research?~
== C0AEX1 ~How little you think of me, Asclepios. Yes, once you are gone... I expect I won't live for much longer either. Even I cannot deny your understanding of medicine and healing far exceeds mine. But now that you have come into conflict with 'her', I will not need to continue to cheat death. I have almost prepared as far as I need to.~
== C0AASCL ~Your petty goals... are not my affair. In certain respects, you have already lost to the one you hate so greatly.~
== C0AEX1 ~Is that so? I did not expect you to think of me so poorly, given you deigned to associate with me at all?~
== C0AASCL ~Your mind is undeniably brilliant. With the apt resources, even I could not compare to the your sheer capacity for knowledge and resourcefulness.~
== C0AASCL ~But you lack the quality which makes a true researcher—a vision for the future, and subsequently, something to truly strive for. In that, you cannot match her... Overseer.~
== C0AEX1 ~...~
== C0AEX1 ~Oh my, dear Asclepios. I'm hurt. All this time, I believed we are alike.~
== C0AASCL ~I believe there is nothing else to be said. I cannot help you any further... and whether you can see the truth for yourself depends on your own ability now. Though I cannot help but doubt your chance of success.~
== C0AEX1 ~It's truly a shame, Asclepios. Even though I'm disappointed in you... I've liked our association for the past few years. And if you asked me to right now... I would still save you, out of simple respect for you as a scientist.~
== C0AASCL ~I decline.~
== C0AEX1 ~As you wish.~
== C0AEX1 ~I'll leave you to die in peace.~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut14")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",41)~ THEN C0AASCL QUEST1-41
~Reese?~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",42)~
== C0AREES ~...~
== C0AASCL ~I see... so that's how it is. Ha. *cough* Haha...~
== C0AASCL ~...Very well, then, Make it a quick one, at least. Right here.~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut15")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",42)~ THEN C0AREES QUEST1-42
~...~ [C0BLANK]
= ~You didn't have to come and see this, you know.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",43)
	ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut16")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",43)~ THEN C0AREES QUEST1-43
~Gil.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",44)~
== C0AASCS ~I had to... make sure the mission was complete.~
== C0AREES ~Mmm.~
== C0AREES ~I should by reason tell you not to get attached. But... I won't say anything this time.~
== C0AASCS ~...~
== C0AREES ~Thinking of going back home after this? Your assignment is over, no more need to dye your hair or fake your accent every day...~
== C0AASCS ~I... I think I'll stay for a bit longer. Asclepios did... teach me many things, despite whatever else he's done. Rather than letting these skills go to waste, I'd rather they be of use in helping others... like he truly believed in, once.~
== C0AREES ~*nod*~
== C0AREES ~That's not too bad of an idea, either. You won't have to take any more missions like this for a while.~
== C0AREES ~We'll go back to our places, then. Keep up the act of being acquaintances... and watch for the Interitus's movements, if we can keep track of the bastards.~
== C0AREES ~And don't worry about to the report to the captain... I'll write it to her myself.~
== C0AASCS ~Reese...~
== C0AREES ~Hmm?~
== C0AASCS ~I was wondering. Now that we've gotten to the bottom of this... you're glad it wasn't her, aren't you?~
== C0AREES ~*sigh* Well... I'm relieved, at least, I wouldn't have had to write *that* report.~
== C0AREES ~And... she has a good heart. It's our duty to make sure people like her remain safe.~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut17")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",44)~ THEN C0AMAGN QUEST1-44
~I see... what a terrible affair this all has been.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",45) AddExperienceParty(50000)~
= ~To think that the fruits of my past research could have caused such harm... though I had no deliberate part in the details of what has occurred, it seems my actions—or perhaps inactions—have left me with much to make up for.~
= ~Reese has gone to deliver the bad news of the poor, innocent young man's father. And I will dedicate my study in the forseeable future to producing a cure for the afflictions caused by this... 'Titan'. Perhaps some lives may yet be saved.~
= ~As for Asclepios... he managed to escape, you said?~
END
  ++ ~Unfortunately, he did. But he was badly injured from the battle.~ + QUEST1-44-1
  ++ ~You sound unusually forlorn, considering what he's done.~ + QUEST1-44-2

CHAIN C0AMAGN QUEST1-44-1
~He will not be able to leave the city, I imagine. His name has already been brought to the enforcers, and they will be watchful for his presence. And the law will not be merciful on him.~
EXTERN C0AMAGN QUEST1-44-3

CHAIN C0AMAGN QUEST1-44-2
~I cannot help it, my <GIRLBOY>... if you had dedicated your life to research as I have, you may understand...~
EXTERN C0AMAGN QUEST1-44-3

CHAIN C0AMAGN QUEST1-44-3
~I cannot justify the outcome of what he's done, of course. But I have no doubt he was truly a dedicated researcher with a mind few could hope to compare against.~
= ~Once the tales of all he has done begins to spread, he will no doubt be condemned as a madman, a villain... not unrightfully so, I may add. But that is all the world will remember him as, nothing more.~
= ~*sigh* Truly a pity...~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-44-4A
  ++ ~You knew him better than most. Do you understand what drove him at all?~ + QUEST1-44-4
  ++ ~It seemed like he had a true desire to heal others. Why would he turn to such cruel methods?~ + QUEST1-44-4
  ++ ~My part in this is done. The rest of the work in handling this case is up to you.~ + QUEST1-44-6

CHAIN C0AURA2J QUEST1-44-4A
~Professor, I still don't understand... how could someone so brilliant, and so driven to heal people... what could lead someone to become like he did?~
EXTERN C0AMAGN QUEST1-44-4

CHAIN C0AMAGN QUEST1-44-4
~I cannot presume to truly understand his mind, of course. But he and I did spend many evenings sitting at this table, talking about our theories and philosophies as men of science and knowledge... and so my guesses may be more accurate than most, at least.~
= ~He was never very forthright about his personal history, but under the influence of a few glasses of gin, I have learned a few things. Asclepios Cohval was once one of Halruaa's most respected scholars, a true paragon. But... there are always consequences of reaching such heights.~
= ~Many years ago, Asclepios's beloved daughter fell victim to a never-before seen malady, one which naturally had no known cure at the time. Even for all his knowledge, he was helpless to serve who he cared for the most, and as the greatest in his field, naturally none other could succeed where he failed.~
= ~Perhaps in desperation, he turned to... other methods. Those which held unspeakable ramifications for his ethics and his standing among his peers. But at the time, it seemed there was still a line he was unwilling to cross. In the end, not only could he not save his kin, but what he had already done was more than enough to have him exiled from his homeland.~
= ~It appears as though he learned a certain lesson from that, and chose knowledge and what he believed the greater good over his own morality. I know from studying his past research that he has long since created the cure for the ailment which took his daughter's life... alas, far too late. No doubt he believes it would have been better had he chosen the same measures when he had the chance. Were I in his place, I wonder if *I* could deny the same thought.~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-44-5
IF ~!InParty("C0Aura")~ EXTERN C0AMAGN QUEST1-44-6

CHAIN C0AURA2J QUEST1-44-5
~So, that's why. Even I'm not sure if I could...~
== C0AMAGN ~The most common downfall of every researcher is obsession, dear girl, as you've no doubt seen. Some would even say that it is inevitable, as the more that we advance our own knowledge, the more powerful that lure becomes for each and one of us, wearing away at our moral foundations bit by bit... until we've completely lost sight of exactly how deep we've sunk.~
== C0AURA2J ~...*nod*~
== C0AMAGN ~Now, there is one last question we must ask ourselves—what now?~
== C0AURA2J ~Excuse me...?~
== C0AMAGN ~No matter his fate, it appears that Asclepios's work is at its end. And now the responsibility is upon us to decide what is done about the research he has already accomplished.~
== C0AMAGN ~He and I have collaborated for many months now. I have kept most of the knowledge he has shared with me right here in this house. You, of course, are welcome to study it yourself, should you hold the desire.~
== C0AURA2J ~That's... but—professor, you're planning to keep using his research?~
== C0AMAGN ~But of course. We are Lantanna, my dear. We understand that knowledge at its purest form has no interent morality. The actions taken in gathering it is a different matter, of course, but it is up to yourself to decide right and wrong. From my perspective, the damage has been done, and so I choose to move forwards.~
== C0AMAGN ~You could view it as a validation of the chosen means, of course. I cannot argue with such reasoning. But so long as the pursuit of knowledge continues, those such as Asclepios will exist. Neither you nor I can change that. If there is one way to stop such men from falling astray, it is to lay the foundations for their path first.~
== C0AURA2J ~I understand. But, still—I... I'll have to think about it.~
== C0AMAGN ~Take your time, my dear. You have that gift yet at your disposal.~
EXTERN C0AMAGN QUEST1-44-6

CHAIN C0AMAGN QUEST1-44-6
~In any case, I must thank you for what you have done, my <PRO_GIRLBOY>. Had you not happened to intervene in this terrible business, I have no doubt the situation would have only gotten further out of hand.~
= ~Though I believe there are still unexplained factors at play in this whole matter. After all, those—~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut18")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",46)~ THEN C0AQINT2 QUEST1-44
~Professor Caridius. A pleasure to finally meet you, truly. I am Otho Aventinus.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",47)~
== C0AMAGN ~Hmph. And what brings such a distinguished officer of Interitus to an mere exiled researcher such as myself?~
== C0AQINT2 ~You are too humble, professor. While your name may no longer grace our land's tomes of knowledge, those familiar with our history still respect your name to this day. Why, even with all our greatest minds, we could not have come close to replicating the ingenuity that was your Pythonic solution, not without the assistance of your own writings.~
== C0AMAGN ~And that is why you made Asclepios aware of my presence, and gave him the opportunity to get close to me?~
== C0AQINT2 ~Ah... that need not concern you any longer. I should inform you that Asclepios Cohval will no longer be a problem. The local authorities have discovered his body and confirmed his death. And with him gone, the threat of Titan will cease, now that the source has been eliminated.~
== C0AMAGN ~Will it, now? I was under the impression that Asclepios was but your collaborator. How else could his creation of Titan, derived from Lantanese alchemy, have come to spread here of all places?~
== C0AQINT2 ~You accuse us? You misunderstand our goals, professor. Asclepios was a heretic, a short-sighted human, and a wretched practitioner of magic. True, we made use of his services as an alchemist to further our own research, but the production and distribution of Titan was by his own making. We disavow his actions, and ended our association with him once his insane actions were known to us.~
== C0AMAGN ~I suppose I have no evidence to prove otherwise. Your lot are skilled at covering your tracks, if nothing else.~
== C0AQINT2 ~Besides... from what our agents have gathered, the foundations of his work which lead to the substance... the Pythonic solutions, has its roots in your own research. Or am I mistaken, honored professor? Perhaps this once-revered title, the "L'an Elementume Vitaer", was written by another's hand?~
== C0AMAGN ~I believe your threats are misaimed. I have no expectations of pursuing this matter further—that is a role for the authorities. As for what led to this, I will not deny my own fault in this disaster. Unlike certain others, I have the wisdom to own up to my own errors.~
== C0AQINT2 ~Most admirable.~
== C0AMAGN ~Let us get to the point. What is it that you Interitus want?~
== C0AQINT2 ~What we want has never changed, not since the days of our original glory, professor. Like any Lantanna, we seek the prosperity of the homeland, nothing more.~
== C0AMAGN ~Is that so? Then has all of this... reckless use of forbidden research, sowing discord in the outerlands... this is for the good of Lantan, is it? We were a nation forged with the goal of advancing the realms through knowledge, boy. Can you truly claim that what you have done serves our original, sacred purpose?~
== C0AQINT2 ~But of course it does, sir.~
== C0AMAGN ~What?~
== C0AQINT2 ~Come now, professor. You have spent many long years away from home since your exile. Surely you cannot be blind and deaf to how our kind are viewed in these ignorant lands?~
== C0AMAGN ~...~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~What of you, dame Aurelia?~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~...that's...~
== C0AQINT2 ~Our nation is one blessed with the greatest gifts of all—knowledge, innovation, imagination... yet how many outside of our home has the wisdom to consider as such? To the realms, our kind are nothing more than a spectacle at best, insects at worst.~
== C0AQINT2 ~While we have used such notions as our means of protection, we Lantanna have still been forced to suffer the consequences caused by the barbarism of others. The chaos of the Time of Troubles, when foul magic ran wild and tore the realms apart... even then, when we Lantanna could have been the saviors of many, we could have taken a rightful position of power, yet our narrowminded leaders did nothing, while the world beyond overlooked us as always. Does the level of ignorance not disgust you?~
== C0AMAGN ~That is how you justify your actions? Perhaps you have forgotten what makes a researcher. Our work is precious for its own sake, not for petty gains such as personal standing.~
== C0AQINT2 ~Nor do I care about the approval of these barbarians. But you should look at yourself, professor. For all your knowledge, you should be in a position fit for your greatness, with innumerable students as your side... yet here you are, alone, living in squalor, gathering knowledge around those for whom it serves nothing.~
== C0AQINT2 ~I find it galling. And, as Interitus, I believe the time for our influence in shaping the realms to be far past due.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~You—you're speaking absolute nonsense!~
== C0AMAGN ~And how do you intend to do so, if you would care to explain? Your research on Titan is halted. Unless you have further plans of expanding your influence, which I know is not supported by the Ayrorch?~
== C0AQINT2 ~That, I fear, I cannot tell you. As any skilled player would know, one does not reveal their hand until the opportune moment. Not unless you are willing to choose a side, and support our noble cause. As a Lantanna, you would be more than welcome.~
== C0AMAGN ~I think not.~
== C0AQINT2 ~That is not unexpected. Though, as a warning made out of respect, I would advise that you interfere no longer in our affairs, just as we will not interfere in yours.~
== C0AQINT2 ~But rest assured that this will not be our last meeting. Soon, these unenlightened lands will understand what knowledge is truly capable of. When Lantan is recognized as the power that it is, those such as you, professor, who wither away in exile, can finally claim the station you are worthy of.~
== C0AMAGN ~Ha!~
== C0AQINT2 ~Do you find my words amusing?~
== C0AMAGN ~I beg your pardon. It is just that I have not seen such rigid, shallow thoughts coming from another of the homeland for many, many years. I presumed the passing of times, and lessons taught by past failures, may have eroded away at the same intentions that brought you to such depths.~
== C0AQINT2 ~...~
== C0AMAGN ~In this age, you dare not even wear the colors you so arrogantly display here and now within the land you claim to love. In your mad pursuits, you intend to make enemies both the realms and your own people, simply because you have allowed any logic or reason to be devoured utterly by ego. You pursue an impossible dream, one which you cling desperately onto as you have long forsaken any chance of returning to the right path.~
== C0AMAGN ~How laughable, and pitiable.~
== C0AQINT2 ~Pity? Unlike those who bow to their lessers, who hide away with their boundless knowledge, betraying their duty to the homeland. We, the Interitus, who offer our blood and sweat to our land, have no use for pity, neither to give, nor receive it from others.~
== C0AMAGN ~I pity that your minds have gone to waste chasing such a worthless endeavor. Truly, by ideology, you all have died long ago. If there is nothing else, I ask that you begone. It is courtesy for a scientist to keep an open mind, yet I see little progress to be made in conversing with ghosts.~
== C0AQINT2 ~...!~
== C0AQINT2 ~...Hahaha...~
DO ~StartCutSceneMode()
	Wait(2)
	FaceObject("C0AQINT1")
	SwingOnce()
	ApplyDamage("C0AQINT1",5,STUNNING)
	ActionOverride("C0AQINT1",SetSequence(SEQ_DIE))
	Wait(1)
	FaceObject("C0AMAGN")
	Wait(3)
	ActionOverride("C0AQINT1",SetSequence(SEQ_AWAKE))
	StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",47)~ THEN C0AQINT2 QUEST1-47
~Get up.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",48)~
== C0AMAGN ~Truly the impulsive actions of a lesser mind.~
== C0AQINT2 ~Think what you wish. The minds of the old and rigid are impossible to restore to their old glory, it seems... so be it, your disciples—ah, singular, not plural—may see otherwise. Forgive me my insensitivity.~
== C0AMAGN ~You have very nearly succeeded in angering me. Begone, lest I test my latest inventions in a manner for which they are not intended!~
== C0AQINT2 ~Very well. We have overstayed our welcome, and will waste your... leisure time no longer. Good <DAYNIGHTALL>.~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~Oh, and as for dame Aurelia of the Clan Glimmershine... allow me to express the Interitus's candid joy to learn that you yet live.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Ah...!~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~When the account of your ship's capsize all those years ago reached the fatherland... well, we were all most aggrieved, of course. One of the great clans' youngest prodigies, lost to the Great Ice Sea...~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~We thought the cruelty of nature was too much, yet it seems they showed mercy in the end, and brought you back to us. Such a great relief, that even such a terrible tragedy did not claim you.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~I'm... touched by the sentiment. I hope no other tragedies like that will occur again, to me... or any other young Lantanna.~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~Our leader, still in Lantan, prepared a gift of something that is rightfully yours, originally to welcome you for your return home. Since you have taken to the road, however, we have made new plans for it to be delivered here, to this very city. I hope you might accept our token of good faith.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~I... see. I guess whether I want this gift or not doesn't matter, does it?~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~Surely you jest, madame. This is but a gesture by us to our homeland's treasured jewel.~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~It should arrive in Athkatla in... oh, five days, by my estimation. I am certain its nature will make quite the pleasant *surprise* for you.~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~And with that, I bid you all adieu.~
DO ~AddJournalEntry(%Quest1_Entry_8%,QUEST_DONE)
StartCutSceneMode()
	Wait(1)
	ActionOverride("C0AQINT1",FaceObject("C0AQINT2"))
	ActionOverride("C0AQINT3",FaceObject("C0AQINT2"))
	Wait(2)
	ActionOverride("C0AQINT1",UseItem("potn10",Myself))
	ActionOverride("C0AQINT1",Wait(1))
	ActionOverride("C0AQINT1",DestroySelf())
	ActionOverride("C0AQINT3",UseItem("potn10",Myself))
	ActionOverride("C0AQINT3",Wait(1))
	ActionOverride("C0AQINT3",DestroySelf())
	UseItem("potn10",Myself)
	Wait(1)
	ActionOverride("C0AMAGN",StartDialogNoSet(Player1))
	DestroySelf()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",48)~ THEN C0AMAGN QUEST1-48
~Mind-boggling... in the years that they have worked in the shadows, their mouthpieces have seemingly only become increasingly conceited.~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",49)~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~And a *gift*? I can imagine why they would see fit to offer you such a thing, my girl. You had best be cautious... that they would say it so brazenly speaks of either arrogance, or a certain belief that what ever it is, it will succeed in achieving their goals.~
== C0AURA2j IF ~InParty("C0Aura")~ THEN ~...*nod*~
== C0AMAGN ~This has all quite ruined the mood. I will return inside and brew another cup of tea to calm the nerves... if you care to have one as well, I shall leave the kettle at the table.~
DO ~SetGlobalTimer("C0AuraBG2BattleEncounter","GLOBAL",FIVE_DAYS)
EscapeAreaMove("C0AUR2",237,201,NE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",52)~ THEN C0AURA2J QUEST1-52
~Hah... haah... that was... really some 'gift', wasn't it?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",53)~
END
  ++ ~You could say that again.~ + QUEST1-52-1
  ++ ~Your tendency to draw trouble is almost as bad as mine.~ + QUEST1-52-2

CHAIN C0AURA2J QUEST1-52-1
~Besides their new model of automaton, the 'Eye' they mentioned that shut down our magic... if I'm not wrong, it must be...~
EXTERN C0AURA2J QUEST1-52-3

CHAIN C0AURA2J QUEST1-52-2
~But— well, heehee... I guess I can't... really argue with that. Though, there's something that concerns me.~
EXTERN C0AURA2J QUEST1-52-1

CHAIN C0AURA2J QUEST1-52-3
~Wait, look over there, <CHARNAME>! There's more of them!~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut19")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",53)~ THEN C0AREES QUEST1-53
~Looks like I came late. Are you both alright?~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",54)~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-1
  ++ ~Reese? Why are you here?~ + QUEST1-53-2
  ++ ~You're that assistant, aren't you? Though it seems you're more than that.~ + QUEST1-53-2

CHAIN C0AURA2J QUEST1-53-1
~Reese? What are you doing here...? And... did you just fire that smokepowder bolt?~
EXTERN C0AREES QUEST1-53-2

CHAIN C0AREES QUEST1-53-2
~I believe I owe you an explanation as well as an apology for my part in getting you involved in this whole mess. I'll begin by introducing myself properly.~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-3
IF ~!InParty("C0Aura")~ EXTERN C0AREES QUEST1-53-3A

CHAIN C0AURA2J QUEST1-53-3
~I think I understand now... you're part of Oculus, aren't you?~
== C0AREES ~Correct, I am.~
END
  ++ ~What is 'Oculus'?~ EXTERN C0AURA2J QUEST1-53-4

CHAIN C0AURA2J QUEST1-53-4
~It's... well, you can consider the closest thing my people have to a military. Its members are among the most disciplined and skilled in battle that the Lantanna have to offer. Our home may not be built for war, but we still have to train select members to be prepared to fight for our defence. My sister's been a captain of Oculus for several years now.~
EXTERN C0AREES QUEST1-53-5

CHAIN C0AREES QUEST1-53-3A
~I'm an enforcer of Oculus, which you Lantan's equivalent of a military force. Few outside of our nation know of our existence, as we have maintained the image of a pacifistic nation. While we strive to avoid conflict, there is still a need for skilled individuals to be prepared to defend our nation when necessary.~
EXTERN C0AREES QUEST1-53-5

CHAIN C0AREES QUEST1-53-5
~However, Oculus's duties involve more than training soldiers for protecting the nation's borders. Over time, we have cultivated an information network throughout the realms as well, and it is among our tasks to protect our nation's secrets from being stolen and exposed, as well as eliminating potential threats.~
END
  ++ ~And that includes the Interitus, who I assume are your enemies.~ + QUEST1-53-6
  ++ ~Does that mean you are here to keep an eye on Professor Caridius?~ + QUEST1-53-7

CHAIN C0AREES QUEST1-53-6
~We have fought against Interitus within the shadows for many years now, attempting to completely eradicate their influence in Lantan as well as putting a stop to their schemes throughout the realms. As you have no doubt seen, their extreme actions threaten both our nation and those who their fanatical beliefs deem to be inferior.~
EXTERN C0AREES QUEST1-53-7

CHAIN C0AREES QUEST1-53-7
~My original directive was to seek out Professor Caridius, who despite his exile is nonetheless an esteemed and valuable asset for Lantan. By taking the role of his student, I may both observe his actions while also allowing for the results of his research to be conveyed back to Lantan.~
= ~Moreover, my presence allowed for the professor to be absolved of any potential suspicion of involvement of Interitus when signs of their presence, as well as the spread of the Titan compound, surfaced here in Amn. Regarding that matter... I fear I must apologize to you.~
END
  ++ ~Apologize to me? What for?~ + QUEST1-53-8
  ++ ~It wasn't a coincidence that we met you at the Promenade, was it?~ + QUEST1-53-8

CHAIN C0AREES QUEST1-53-8
~It was my intention to make contact with you, or more specifically, with your companion, dame Aurelia Glimmershine. I used her assistant, the young gnome from the Jansen family, as an intermediary to draw her interest.~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-9
  ++ ~Why did you want to contact Aura?~ + QUEST1-53-10

CHAIN C0AURA2J QUEST1-53-9
~You were after me?~
== C0AREES ~As I said, I owe you an apology. The professor could be proven to be innocent of involvement with Interitus, but you are another skilled artificer with connections to Lantan, and I had to be certain of whether or not you were also free from suspicion.~
EXTERN C0AREES QUEST1-53-11

CHAIN C0AREES QUEST1-53-10
~Professor Caridius could be proven to be innocent of involvement with Interitus, but dame Aurelia is another skilled artificer with connections to Lantan, and I had to be certain of whether or not she was also free from suspicion.~
EXTERN C0AREES QUEST1-53-11

CHAIN C0AREES QUEST1-53-11
~Once I had made certain of that, I had intended to keep you from being further involved in our affairs... but, unexpectedly, the incident of the man poisoned by Titan occurred, and you unexpectedly played a vital part in solving the case.~
== C0AREES ~Ever since that time, I have been shadowing your movements throughout the city whenever I can, both in anticipation for Interitus to appear, as well as ensure that no sample of Titan, if found by you, finds its way into the local authorities.~
== C0AREES ~You may have wondered how despite the severity of this case, no sample of Titan has found its way into the hands of the those investigating it... and that is because we of Oculus have been making every effort to remove them. If you recall your encounter with the inspector... had they taken the sample of Titan you carried on you at the time, I would have been forced to remove it from him... through any means necessary.~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-12
  ++ ~And the one who launched an exploding bolt at those abominations to save Aura... that was also you, I assume?~ + QUEST1-53-13
  ++ ~So, we've dealt with Titan, and also quite a few members of Interitus. What now?~ + QUEST1-53-14

CHAIN C0AURA2J QUEST1-53-12
~So... were you the one who saved me from those abominations, using that smokepowder bolt?~
EXTERN C0AREES QUEST1-53-13

CHAIN C0AREES QUEST1-53-13
~Yes.~
EXTERN C0AREES QUEST1-53-14

CHAIN C0AREES QUEST1-53-14
~You've done an unspeakably large favor for Lantan, regardless of your intentions. Titan is no longer a threat, and Interitus will have suffered a massive blow this day with the loss of several of their members as well as the destruction of the Eye of Akintaer.~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-15
IF ~!InParty("C0Aura")~ EXTERN C0AREES QUEST1-53-17

CHAIN C0AURA2J QUEST1-53-15
~So... that really is the Eye of Akintaer? I... didn't want to believe it, even though I recognized it.~
END
  + ~OR(2)
  Class(Player1,BARD_ALL)
  Class(Player1,MAGE_ALL)~ + ~I've heard of this name before. It's a Netherese artifact, designed to stop magic within a large area. Have you seen it before, Aura?~ + QUEST1-53-16
  + ~!Class(Player1,BARD_ALL)
    !Class(Player1,MAGE_ALL)~ + ~You know what this is, Aura?~ + QUEST1-53-16

CHAIN C0AURA2J QUEST1-53-16
~I'm very familiar with it... even though it brings back nothing but bad memories. Several years ago, when I ended up in my horrible shipwreck accident and washed up in Kozakura... this Netherese artifact was on that same ship when it sunk.~
== C0AREES ~Considering the circumstances, Oculus has had much difficulty investigating that incident. However, if I'm not mistaken, you were involved in the archeological expedition when it was retrieved?~
== C0AURA2J ~Yes, it was an excavation I was proud of. I wanted to bring it back home, and then... seeing it again, I'm starting to realize that there was no accident after all.~
== C0AREES ~It's highly likely that members of Interitus had infiltrated the members of the Lantanna that were with you at the time. It seems this artifact was their goal, or its unexpected acquisition incited them to steal it... and eliminate any potential witnesses along the way.~
== C0AURA2J ~I started suspecting it when their lieutenant spoke to me... seeing the Eye here again just made me sure of what happened.~
EXTERN C0AREES QUEST1-53-17

CHAIN C0AREES QUEST1-53-17
~Its presence here serves as further proof of Interitus's past and present crimes, and as such, I must bring it back to Lantan. Moreover, there may yet be a chance of restoring it, even in its current state.~
== C0AREES ~And with that, I believe I have briefed you on all that there is to say. If all goes well, my captain will ensure that you need not worry about Interitus again. Soon they will no longer be a threat, and all of Lantan may breathe more easily.~
== C0AREES ~However... though my captain may consider this classified, in case Interitus prove to be a threat to you once more... I should notify you of one last detail, in case it leads you to any useful information in the future. There is sufficient proof to believe they are involved with a mysterious benefactor known as the 'Overseer'.~
== C0AURA2J ~The 'Overseer'? Who... is that?~
== C0AREES ~I fear there is nothing else I can tell you, not from lack of desire but lack of ability. We know next to nothing of this 'Overseer' as of right now, of who or where they may be, only that they are capable of creating truly mighty and powerful creations made for destruction... such as the automaton you have fought. But should my fellow enforcers discover more, we will do our very best to inform you.~
== C0AREES ~For now, I must return to my task of continuing to hunt down what remains of Interitus in this region. We may not meet again for some time. I salute you as an ally of Lantan, a friend of Wisdom, and wish you good luck on your journey.~
DO ~EscapeArea()~ EXIT

///////////////////////////

CHAIN IF WEIGHT #-1 ~Global("C0TamiaEncounter","GLOBAL",0)~ THEN C0TAMIA TAMIA-ENCOUNTER-BEGIN
~Oh, darned stinking trolls! No one told me there'd be trolls in this region! What should we do, Chip?~
DO ~SetGlobal("C0TamiaEncounter","GLOBAL",1)~
== C0KORSH ~Trolls are simple-minded and bloodthirsty. No talking our way out of this one.~
== C0TAMIA ~I know, I kno– oh, look! Hey, you there! Mind offering a poor little gnome and hob... er, a pair of innocent merchants a hand?~
== C0KORSH ~Here they come.~
DO ~DisplayStringHead(Myself,%*applies flaming oil to weapon*%)
	ApplySpellRES("c0afire1",Myself)
	ChangeEnemyAlly(Myself,ALLY)
	ChangeEnemyAlly("C0TAMIA",ALLY)
	ActionOverride("c0tamia",ApplySpellRES("spwi201",Myself))
	ActionOverride("c0tamia",ApplySpellRES("spwi212",Myself))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Begin","MYAREA",2)
Global("C0TamiaEncounter","GLOBAL",1)~ THEN C0TAMIA TAMIA-ENCOUNTER-AFTER
~Whew! Things got a little scary there. Thanks for helping out there, stranger.~
DO ~SetGlobal("C0TamiaEncounter","GLOBAL",2)~
EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-2

CHAIN C0KORSH TAMIA-ENCOUNTER-AFTER-2
~You have our gratitude.~
END
IF ~!InParty("C0Aura")~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-4
IF ~InParty("C0Aura")~ EXTERN C0AURA2J TAMIA-ENCOUNTER-AFTER-3

CHAIN C0AURA2J TAMIA-ENCOUNTER-AFTER-3
~Tamia! Goodness, it's been so long, I didn't even recognize you until just now!~
== C0TAMIA ~Cousin Aura! How nice to see you.~
== C0AURA2J IF ~!Dead("C0Korsh")~ THEN ~<CHARNAME>, this is my cousin Tamia. Her family runs a prominent trading business back home. You're here in Amn for a business trip, right? I, um, don't recognize your travelling partner though.~
EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-5

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-4
~Oh, allow me to introduce myself! Tamia Spindleweaver, of the Spindleweaver Trading Company of Lantan. And this here is my friend, Chip.~
EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-5

CHAIN C0KORSH TAMIA-ENCOUNTER-AFTER-5
~Korsh Thurgarr. My name tends to put humanoids on edge. This little one calls me "Chip".~
== C0TAMIA ~Chip's an aspiring merchant. I met him not long ago, while I was on my way to Trademeet. This is the way, isn't it?~
END
++ ~Yes, it is.~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-6
++ ~A hobgoblin merchant?~ EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-7

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-5a
~Naturally. Business is passable back home in Lantan, but the real opportunities for profit lie overseas. Anyways, is this the road to Trademeet?~
END
++ ~Yes, it is.~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-6

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-6
~Good, looks like the map was right after all. Wonder where all those trolls came from, though. That wasn't on the travel pamphlet.~
END
IF ~!InParty("C0Aura")~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-8
IF ~InParty("C0Aura")~ EXTERN C0AURA2J TAMIA-ENCOUNTER-AFTER-9

CHAIN C0KORSH TAMIA-ENCOUNTER-AFTER-7
~I'm used to that reaction.~
== C0TAMIA ~Don't let his looks deceive you, my friend, Chip over here cuts deals as expertly as he cuts troll meat. He's a little new to the business, but he's got talent.~
END
IF ~!InParty("C0Aura")~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-8
IF ~InParty("C0Aura")~ EXTERN C0AURA2J TAMIA-ENCOUNTER-AFTER-9

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-8
~Now then, we really need to get going, don't we, Chip? I hear trading caravans are starting to head towards Trademeet again, so if we don't get a move on, there won't be anywhere left for us!~
== C0KORSH ~Agreed.~
== C0TAMIA ~Thank you ever so much for your help, friend! Here's a little something for you. And if you find yourself in Trademeet, look around for us and we'll be sure to give you a respectable bargain on our deals. Come on, Chip! I can almost taste the profits already!~
DO ~GiveGoldForce(500)
ActionOverride("c0korsh",EscapeAreaObject("En"))
ActionOverride("C0TAMIA",EscapeAreaObject("En"))~ EXIT

CHAIN C0AURA2J TAMIA-ENCOUNTER-AFTER-9
~You're heading to Trademeet, cousin? We were just there, actually. Are you acting independently or on behalf of the Spindlewaver Company?~
== C0TAMIA ~Can't tell you yet, it's a surprise! Besides, nothing's certain yet. I wouldn't like to disappoint you if things don't work out, you know?~
== C0KORSH ~Ahem.~
== C0TAMIA ~Yes, yes, we should really be going. I hear trading caravans are starting to head towards Trademeet again, so if we don't get a move on, there won't be anywhere left for us!~
== C0AURA2J ~Oh. Well, it was nice seeing you, Tamia. We should sit down and catch up over a pot of tea the next time we meet.~
== C0TAMIA ~Absolutely! Oh, before I forget, I should give you something for helping us out just now.~
DO ~GiveGoldForce(500)~
== C0AURA2J ~You don't––oh, come on, Tamia, we're family!~
== C0TAMIA ~No, no, trader's etiquette. I'd feel worse if you didn't take this. If you find yourself in Trademeet, though, I wouldn't mind it if you spent some of that on my stuff. We'll be sure to give you and your friends a great deal for everything!~
END
++ ~We'll be sure to remember that.~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-10
++ ~As touching as this family reunion is, I think we've all got places to be.~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-10

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-10
~Alright then, I'll see you around, cuz!~
== C0KORSH ~Farewell.~
DO ~ActionOverride("c0korsh",EscapeAreaObject("En"))
ActionOverride("C0TAMIA",EscapeAreaObject("En"))~ EXIT

CHAIN IF ~GlobalGT("C0TamiaEncounter","GLOBAL",0)
GlobalLT("C0KorshQuest","GLOBAL",1)~ THEN C0KORSH KORSH-SHOP
~Good <DAYNIGHTALL>, <RACE>. Might I interest you in my wares?~
END
++ ~Show me your wares.~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~Not right now.~ EXIT

CHAIN IF WEIGHT #-1 ~Global("feudplot","GLOBAL",2)
Global("C0KorshQuest","GLOBAL",0)~ THEN C0KORSH KORSH-QUEST-0
~Greetings, <RACE>. If you have time, there is something I would ask of you.~
END
++ ~What is it?~ DO ~SetGlobal("C0KorshQuest","GLOBAL",1)~ + KORSH-QUEST-0-1

CHAIN C0KORSH KORSH-QUEST-0-1
~I have heard the tales of your heroism throughout this town. I believe there is a task that you would be capable of accomplishing, and I will pay you well for it.~
= ~Alongside my friend Tamia, I have set up a fairly comfortable place here as a trader in the outskirts of town. Were it only for myself, I would be satisfied. However, I have family and friends who left my former tribe with me, who are still in need of a proper home and safety.~
= ~Though my personal connections here lend me enough goodwill to avoid scrutiny, I do not have the trust of the leaders of Trademeet to allow for the rest of my kin to join me here. You, however, may be able to persuade them.~
END
++ ~I could ask the High Merchant to give your people a place to live.~ + KORSH-QUEST-0-2
++ ~And what business is this of mine?~ + KORSH-QUEST-0-2
++ ~You want hobgoblins to live among the people here? And why should they allow you?~ + KORSH-QUEST-0-2

CHAIN C0KORSH KORSH-QUEST-0-2
~Of course, I am not so unreasonable to make such a demand without recompense. I am a trader, after all, and I know of something that may earn the trust of the High Merchant, if nobody else.~
== C0KORSH ~I have here one of the Golden Acorns of Providence, one of multiple rare ingots that were once owned by the wealthiest merchants of Amn. Most are lost now, and the possession of them is desired for any merchant or Waukeenar in this nation.~
DO ~GiveItemCreate("C0AMISC7",Player1,1,0,0)~
== NALIAJ IF ~InParty("NALIA")~ THEN ~The Acorns of Providence! My father showed me one when I was a child. They used to be a highly valued type of currency throughout Amn, though they're no longer treated as such because of how many have disappeared. Nowadays, they're mostly sought out by collectors.~
== C0KORSH ~It was a stroke of luck that allowed for this one to fall into my hands. As a show of trust, I will give you mine, so that you may use it to compare against others, for there have been many forgeries made over time. If you may find at least four more during your travels, I believe that would be a gift that the merchants would be eager to accept.~
END
++ ~Very well. I'll keep an eye out for them.~ + KORSH-QUEST-0-3
++ ~You believe the merchants will accept you for some gold acorns?~ + KORSH-QUEST-0-3

CHAIN C0KORSH KORSH-QUEST-0-3
~There is one more item I have heard tales of from the priests of Waukeen from whom I learned the art of trade. The weighing scales blessed and used by the Lady of Trade herself during the Time of Troubles.~
= ~Unlike the acorns, however, I have no proof that such an item is anything more than a story. But should you discover it as well, it would make for even greater of a peace offering.~
= ~It is not a simple task I ask of you, I know, for these are no common items to find. But I wish the best for my kin. Should you do this for me, I will repay you with a reward you will not be disappointed in.~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0KorshQuest","GLOBAL",0)
GlobalLT("C0KorshQuest","GLOBAL",7)~ THEN C0KORSH KORSH-QUEST-1
~Greetings again, <RACE>. What progress has there been towards my request?~
END
+ ~Global("C0KorshQuest","GLOBAL",3)~ + ~The High Merchant is willing to meet with you for negotiations.~ + KORSH-QUEST-3
+ ~!PartyHasItem("C0AMISC6")
    NumItemsPartyGT("C0AMISC7",4)~ + ~I've found five of the acorns.~ + KORSH-QUEST-1-1
+ ~PartyHasItem("C0AMISC6")
    NumItemsPartyGT("C0AMISC7",4)~ + ~I've found five of the acorns, and the scales of Waukeen.~ + KORSH-QUEST-1-2
++ ~Not yet. Can I see your wares?~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~I'm still looking for more.~ EXIT

CHAIN C0KORSH KORSH-QUEST-1-1
~You have? Indeed, I see they are the real makings, as well. A pity the scales of Waukeen appeared to be no more than a legend.~
DO ~SetGlobal("C0KorshQuest","GLOBAL",2)~ EXTERN C0KORSH KORSH-QUEST-1-3

CHAIN C0KORSH KORSH-QUEST-1-2
~You have? Indeed, I see they are the real makings, as well. And Waukeen's blessed scales, as well? This is even more than I had hoped for, my friend.~
DO ~SetGlobal("C0KorshQuest","GLOBAL",2)~ EXTERN C0KORSH KORSH-QUEST-1-3

CHAIN C0KORSH KORSH-QUEST-1-3
~Please, bring them to the High Merchant and tell him of what I ask. I believe he will be more than reasonable when he sees my offering.~
EXIT

CHAIN C0KORSH KORSH-QUEST-3
~Truly? I thank you, <RACE>. I will leave immediately to see him, then. You are welcome to come as well, if you wish to observe our negotiations.~
== C0TAMIA IF ~InMyArea("C0TAMIA")~ THEN ~Good luck, Chip!~
== C0KORSH ~Thank you.~
DO ~SetGlobal("C0KorshQuest","GLOBAL",4)
EscapeArea()~ EXIT

EXTEND_TOP CELOGAN 80
+ ~Global("C0KorshQuest","GLOBAL",2)
   NumItemsPartyGT("C0AMISC7",4)~ + ~Lord Logan, I've come in place of a merchant in the outskirts of town.~ EXTERN CELOGAN KORSH-QUEST-2
END

CHAIN CELOGAN KORSH-QUEST-2
~Indeed? Such matters are usually brought to the attention of the guildmistress. Perhaps you should try to contact her, instead.~
END
++ ~This is a... special case. He hopes you might hear his plea personally.~ + KORSH-QUEST-2-1
++ ~I think you might be better suited for this. The merchant I speak of is the hobgoblin, Korsh Thurgarr.~ + KORSH-QUEST-2-2

CHAIN CELOGAN KORSH-QUEST-2-1
~I see. Then perhaps you should explain the situation fully to me. So long as your client is reasonable, I will ~
END
++ ~The merchant is a hobgoblin named Korsh Thurgarr. He hopes the town might allow his kin to find a home here, safe from the dangers of the wild.~ + KORSH-QUEST-2-2

CHAIN CELOGAN KORSH-QUEST-2-2
~Ah... the hobgoblin working for Spindleweaver Traders? I believe I know whom you speak of. Though I have not met him personally, I have heard of his work alongside his employer, madame Tamia. By all accounts, he is an honest merchant, and some of the savvier merchants from other towns have come to prefer trading with him over others.~
= ~I am certainly sympathetic towards his cause. It must have been undoubtedly difficult to escape the violent life he comes from, and become a skilled and relatively successful trader. If it were in my power, I would not hesitate to give his people the safety of a home.~
= ~But such decisions are not mine alone to make, and some of the others with power in the town's politics will be... less enthused by the idea. Some will distrust him for his race, while others may not like the competition.~
= ~Perhaps I will raise his case during our next official meeting, but that is the most I can do. Tell him I apologize for my limited power to give him what he asks.~
END
+ ~NumItemsPartyGT("C0AMISC7",4)
   !PartyHasItem("C0AMISC6")~ + ~Korsh understands the difficulty of what he asks. As his peace offering, I've been entrusted with five Golden Acorns of Providence, personally appraised by him.~ DO ~TakePartyItemNum("C0AMISC7",5) DestroyItem("C0AMISC7")~ + KORSH-QUEST-2-3
+ ~NumItemsPartyGT("C0AMISC7",4)
   PartyHasItem("C0AMISC6")~ + ~Korsh understands the difficulty of what he asks. As his peace offering, I've been entrusted with five Golden Acorns of Providence, personally appraised by him, as well as Waukeen's own blessed scales.~ DO ~SetGlobal("C0KorshQuestGaveScales","GLOBAL",1) TakePartyItem("C0AMISC6") DestroyItem("C0AMISC6") TakePartyItemNum("C0AMISC7",5) DestroyItem("C0AMISC7")~ + KORSH-QUEST-2-4

CHAIN CELOGAN KORSH-QUEST-2-3
~Five Golden Acorns of Providence, you say? Indeed, that is impressive, both for the gathering and the skills needed for appraising them for their integrity and value. That would, perhaps, be enough to persuade the other merchants...~
EXTERN CELOGAN KORSH-QUEST-2-5

CHAIN CELOGAN KORSH-QUEST-2-4
~By the gods! Waukeen's own scales from the Time of Troubles? I can scarcely believe my eyes. Most believe that these scales were naught but a legend, yet here they are before me. No doubt this would not only impress the merchants, but gain the support of the Waukeenar church as well.~
EXTERN CELOGAN KORSH-QUEST-2-5

CHAIN CELOGAN KORSH-QUEST-2-5
~Very well, <CHARNAME>. I see the possibility of convincing the others with influence to agree to negotiations. Please, bring Korsh Thurgarr to me, and I will speak with him about the terms.~
DO ~SetGlobal("C0KorshQuest","GLOBAL",3)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",5)~ THEN CELOGAN KORSH-QUEST-4
~Ah, I see you've come as well, <CHARNAME>. We are still in the midst of negotiations. Please take a seat if you're interested.~
DO ~SetGlobal("C0KorshQuest","GLOBAL",6)~
== TRHMER01 ~Indeed, though this meeting should not be too much longer. We have just finished writing the contract for Mr... Thurgarr.~
== C0KORSH ~In return for our fulfilling our part of the contract, a quota of our earnings as an officially recognized merchant branch will be taxed, as the law of the land dictates. Those of the Thurgarr family who wish to invest or otherwise become involved in trade will become associates of the merchants' guild, with all the benefits and responsibilities that entail. And... our kin will settle in the currently unoccupied land north of Trademeet.~
== CELOGAN ~Forgive me. I understand it is not ideal, but there will be those who are... apprehensive towards having such unusual neighbors.~
== TRHMER01 IF ~Global("C0KorshQuestGaveScales","GLOBAL",1)~ THEN ~Rest assured, however, that you will have our full support during the process of settling into your land. The church of Waukeen has made a very generous donation for your cause, and construction has already began. If you feel anything more is required, we may continue our negotiations...~
== C0KORSH ~No, these terms are acceptable. I accept without complaints.~
== TRHMER01 ~In that case, please sign under here. And you as well, milord.~
== CELOGAN ~Of course.~
== TRHMER01 ~I must say, Mr. Thurgarr, it is remarkably refreshing to have an honest meeting with entirely reasonable terms and no need to read the fine print for furtively written clauses that can be conveniently reinterpreted. You'll do well within our circle, I'm sure.~
== CELOGAN ~Once we have passed the contract to be signed by the other merchants, everything will truly be in order. I assume I can leave the responsibility of that to you, guildmistress?~
== TRHMER01 ~*sigh* It will not be a pleasant conversation. But I'm sure it'll all work out.~
== CELOGAN ~Indeed. And with that, I officially congratulate and welcome you and your kin as official citizens of Trademeet, Mr. Thurgarr.~
== C0KORSH ~Thank you. Since I have my own preparations to make, I will take up no more of your time. Good <DAYNIGHTALL>.~
DO ~EscapeAreaMove("AR2014",356,270,SSE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",6)~ THEN CELOGAN KORSH-QUEST-5
~So, what do you think, guildmistress?~
DO ~SetGlobal("C0KorshQuest","GLOBAL",7)~
== TRHMER01 ~Well, certainly intelligent, well-mannered, remarkably shrewd in assessing the contract. I can sense he was still nervous once we started making progress, of course. That's to be expected, given his background and limited experience in the field.~
== TRHMER01 IF ~Global("C0KorshQuestGaveScales","GLOBAL",1)~ THEN ~And, considering we now have the prestige of possessing an artifact of Waukeen, I am certain he will be quite popular before long.~
== TRHMER01 ~We're going to need to give him support when it comes to dealing with the other guilds, naturally, given outer appearances. But I think in the long-term, it'll be a worthy investment.~
== CELOGAN ~I trust your judgment, of course. With luck, Trademeet shall be all the more prosperous with our newest colleague.~
== CELOGAN ~Thank you for your part in this, <CHARNAME>. I can see what has been put to paper today will be beneficial for everyone involved. I wish you a good <DAYNIGHTALL>.~
DO ~ActionOverride("TRHMER01",EscapeArea())
MoveToPoint([1222.426])
SmallWait(1)
Face(SW)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",7)~ THEN C0KORSH KORSH-QUEST-FINISH
~Thank you for all of your assistance, <CHARNAME>. My kin now have a future thanks to your efforts and the generosity of the town. Please accept this reward along with my utmost gratitude.~
DO ~SetGlobal("C0KorshQuest","GLOBAL",8) GiveGoldForce(3000) AddExperienceParty(10000) ChangeStoreMarkup("C0ASHOP2",100,40)~
== C0KORSH IF ~Global("C0KorshQuestGaveScales","GLOBAL",1)~ THEN ~And, for the extra effort in finding the Scales of Waukeen and offering it for my need, please take my personal armor as an exchange. I believe I will no longer need it.~
DO ~GiveItem("C0ACHAN1",Player1)~
== C0KORSH ~Of course, I would be more than pleased to have you spend that gold back in my shop. And as extra incentive, you'll receive an exclusive discount for my wares from hereon, as you rightly deserve.~
END
+ ~Global("C0KorshQuest","GLOBAL",8)~ + ~So, what are your plans now, Korsh?~ + KORSH-QUEST-POST-1
++ ~Then I'd like to take advantage of that. Show me your wares.~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~I'm happy to have helped. Goodbye, Korsh.~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0KorshQuest","GLOBAL",7)~ THEN C0KORSH KORSH-QUEST-POST
~I greet you warmly, my friend. Have you come to see my wares?~
END
+ ~Global("C0KorshQuest","GLOBAL",8)~ + ~So, what are your plans now, Korsh?~ + KORSH-QUEST-POST-1
++ ~Yes, show me what you have.~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~Not right now. Goodbye.~ EXIT

CHAIN C0KORSH KORSH-QUEST-POST-1
~I will continue my association with Spindleweaver Traders, of course. Now that we are recognized as proper citizens, my kin can begin to enter the mercantile world and build proper lives of their own. They have much to learn first, and working with the other merchants will be a good start.~
= ~In the future, perhaps I will seek to build friendly relations with the neighboring human settlements, but that will have to wait, for I doubt all the leaders of such places will be as welcoming as those of Trademeet.~
END
+ ~Global("OgreAlliance","GLOBAL",1)~ + ~Perhaps you can start with the village of Imnesvale. They have an alliance with a group of benevolent ogres, so I'm certain they'd be willing to trade with you.~ DO ~SetGlobal("C0KorshQuest","GLOBAL",9)~ + KORSH-QUEST-POST-2
++ ~Show me your wares, Korsh.~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~I see. Good luck on that end, Korsh. I'll talk to you another time.~ EXIT

CHAIN C0KORSH KORSH-QUEST-POST-2
~Indeed? That would be a potential opportunity... and I know some of my kin would be more comfortable in the country as opposed to here. Thank you again, <CHARNAME>, for giving me this valuable information. I will send my younger brother, Torpuk Thurgarr, as a liaison to this Imnesvale.~
= ~Perhaps you might meet him there should he establish trade relations there. Though be warned, my brother is a little... odd, so do not be alarmed by his antics. He is harmless.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",9)~ THEN C0KORSHB KORSH-QUEST-BROTHER-1
~Hello hello! You <CHARNAME> or you not? Yes, you <CHARNAME>, yes, yes?~
DO ~SetGlobal("C0KorshQuest","GLOBAL",10)~
END
++ ~Uh... that's right, I'm <CHARNAME>.~ + KORSH-QUEST-BROTHER-2
++ ~You're... Korsh's brother, I assume?~ + KORSH-QUEST-BROTHER-2

CHAIN C0KORSHB KORSH-QUEST-BROTHER-2
~Yes yes yes. You <CHARNAME>, friend of Thurgarr family. Me "Trip". Torpuk Thurgarr. Also, me trip. Many times on journey. Trip come to village, very welcome. Make friends with ogres who come to village too.~
= ~Now Trip sells, also buys. Learn from brother. Also get things from brother, so you buy from me or Korsh, same deal. You want to see 'wores'? No, wares! Yes. Trip get new wares from brother when go on journey. You can see.~
END
++ ~Sure... just don't sell any more of your terrible jokes.~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~Maybe another time... I've, um, got somewhere to be.~ EXIT
++ ~I'm going to get far, faaaar away from you now.~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0KorshQuest","GLOBAL",9)~ THEN C0KORSHB KORSH-QUEST-BROTHER-3
~Hello hello, <CHARNAME>. You buy from Trip, or sell to Trip? Trip knows how to do both.~
END
++ ~How's the village treating you?~ + KORSH-QUEST-BROTHER-4
++ ~Show me your wares.~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~I don't need to do either right now.~ EXIT

CHAIN C0KORSHB KORSH-QUEST-BROTHER-4
~Very good, yes yes. People here good to Trip. Trade many things, teach Trip how to do things properly. Trip like it here.~
= ~You buy or sell from Trip?~
END
++ ~Show me your wares.~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~Not right now.~ EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura")
Range("C0Aura",15)
!Dead("C0Aura")
GlobalGT("C0TamiaEncounter","GLOBAL",0)~ THEN C0TAMIA TAMIA-SHOP1
~Hey there, dearest cousin and friends! Might I interest you in something shiny, glittery... or perhaps magical?~
END
++ ~Show me your wares.~ DO ~StartStore("c0ashop1",LastTalkedToBy)~ EXIT
++ ~Not right now.~ EXIT

CHAIN IF WEIGHT #-1 ~OR(3)
!InParty("C0Aura")
!Range("C0Aura",15)
Dead("C0Aura")
GlobalGT("C0TamiaEncounter","GLOBAL",0)~ THEN C0TAMIA TAMIA-SHOP2
~Hey there, friends! Might I interest you in something shiny, glittery... or perhaps magical?~
END
++ ~Show me your wares.~ DO ~StartStore("c0ashop1",LastTalkedToBy)~ EXIT
++ ~Not right now.~ EXIT

///////////////////////////
// Portal Quest
///////////////////////////

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",1)~ THEN C0AURA2J QUEST2-1
~<CHARNAME>, can I take a look at that gem?~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",2)~
END
  ++ ~Sure, here you go.~ + QUEST2-1-1
  ++ ~Fine, but be quick with it.~ + QUEST2-1-1

CHAIN C0AURA2J QUEST2-1-1
~This is... if I'm not mistaken, this is an elemental essence. They're magical gem-like items that come from the various Elemental Planes, and are filled with elemental energy. You don't find them normally on the Prime Material Plane.~
== C0AURA2J IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~They're like... hmm, remember that ice crystal we found while travelling the Sword Coast? It's something like that, but many times more powerful.~
END
  + ~OR(2)
  	 Class(Player1,MAGE_ALL)
	 CheckStatGT(Player1,50,LORE)~ + ~I've heard of these things. They're normally used as power sources, aren't they?~ + QUEST2-1-2A
  ++ ~So what can they be used for?~ + QUEST2-1-2
  ++ ~Get to the point.~ + QUEST2-1-2

CHAIN C0AURA2J QUEST2-1-2
~Well, to put it simply... they can be used as for enchantment, most of the time. Magical items made with them will have elemental powers. This one, though...~
EXTERN C0AURA2J QUEST2-1-3

CHAIN C0AURA2J QUEST2-1-2A
~Yes! That's exactly right. Smaller kinds can be used to create magical items with the power of the elements. This one, though...~
EXTERN C0AURA2J QUEST2-1-3

CHAIN C0AURA2J QUEST2-1-3
~Compared to the kinds I've seen before, it's a little unstable. Ah—don't worry, I'm not saying it'll explode or anything like that. But it's a little *too* full of energy to be used for standard crafting.~
= ~I do know one thing they could be used for, though... with an appropriate housing system, they can be used as a conduit to open portals into small pockets of the planes they were made in. Most of these types of crystals don't have enough power for that, but these are very exceptional.~
END
  ++ ~But what use would that be?~ + QUEST2-1-4
  ++ ~And I'd assume these planes would be very dangerous?~ + QUEST2-1-5

CHAIN C0AURA2J QUEST2-1-4
~Well... the joy of exploration, I suppose. It'd be extremely dangerous, of course. But so exciting!~
EXTERN C0AURA2J QUEST2-1-6

CHAIN C0AURA2J QUEST2-1-5
~Oh, yes. Of course. But also, potentially wondrous!~
EXTERN C0AURA2J QUEST2-1-6

CHAIN C0AURA2J QUEST2-1-6
~I know, I know... it's unnecessary. But think about it! The sights, the treasures, the hidden knowledge! We'd just need a portal to use as a medium for these power crystals...~
END
  ++ ~You have a portal in your workshop, don't you?~ + QUEST2-1-7

CHAIN C0AURA2J QUEST2-1-7
~Oh... right! I was trying to build as way to get back and forth from my home in Anchoril... but I never got it to work. I couldn't get my hands on a proper translocation crystal that would be powerful enough to make the distance.~
= ~It's possible... maybe. But without some adjustments... I think the energies would probably destroy the structure before it had a chance to open a planar portal. I'd need some extra parts... and they have to be from a specific material, or it won't be strong enough.~
= ~Well, maybe it's something to keep in mind if you want to try and explore the planes. Who knows what we might find?~
END
  ++ ~It could be interesting. I'll keep my eye out for unusual parts.~ + QUEST2-1-8
  ++ ~That seems overly risky. Let's not get too ahead of ourselves.~ + QUEST2-1-9

CHAIN C0AURA2J QUEST2-1-8
~Okay! I'll tell you if we've found enough suitable parts, and then we can bring them back to the workshop and I'll see what I can put together.~
EXIT

CHAIN C0AURA2J QUEST2-1-9
~You may be right. Well, it's just a crazy idea, but if we find enough parts, I'll tell you and we can think about finishing the portal I've got in the workshop.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",3)~ THEN C0AURA2J QUEST2-3
~Hmm... huh... oh, this looks just right! <CHARNAME>, I think these parts will do!~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",4)~
= ~We can get back to the workshop whenever we have time and I'll set things up. This'll be fun!~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",5)~ THEN C0AURA2J QUEST2-5
~Okay, let's see... if I readjust it so that fits there... no, wait, that'll break it. Bad idea.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",6)~
= ~No... no... that's not going to work, too unstable, we might end up trapped in limbo if it breaks down halfway... okay, let me think it through again...~
= ~Yep, that should go... there... hgggnnhhh!~
= ~Nnnngh...! Oh, come on, just a little bit more...!~
END
  ++ ~You seem to be having a hard time.~ + QUEST2-5-1
  ++ ~Need a hand?~ + QUEST2-5-1
  ++ ~Hurry up, will you?~ + QUEST2-5-1

CHAIN C0AURA2J QUEST2-5-1
~Sorry, I just... can't... get these two pieces to secure themselves together... ugh, I give up. Guess I need to build up some muscle for this kind of thing.~
= ~<CHARNAME>, could you... help me out on this? Just put the parts into the generators in the right order. I've labelled the parts so you know which goes first. Oh, just in case there's anything in the generators, I'll put it on the shelf to the right.~
DO ~ActionOverride(Player1,TakePartyItem("C0AMISC1")
ActionOverride(Player1,TakePartyItem("C0AMISC2")
ActionOverride(Player1,TakePartyItem("C0AMISC3")
ActionOverride(Player1,TakePartyItem("C0AMISC4")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",7)~ THEN C0AURA2J QUEST2-7
~Ooh, there we go. Looks like that did it... now just let me unlock the power compartment on the right. That's where the power crystal goes.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",8)
PlaySound("AMB_D21")
Unlock("Container007")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireFirstTalk","GLOBAL",1)~ THEN C0AURA2J QUEST2-FIRE
~The Elemental Plane of Fire... the tomes of lore say that its landscape resembles that of the Prime Material Plane most closely, but with extreme heat... it'll be lethal to try and enter without some protection from fire, or the environment itself will burn us to death. I can make potions that will keep us at least able to survive there for a couple of hours, but it'd be best if we have some appropriate spells or magical items to help us.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireFirstTalk","GLOBAL",2)~
END
IF ~Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXTERN C0AURA2J QUEST2-FIRSTTIME
IF ~!Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXIT

CHAIN C0AURA2J QUEST2-FIRSTTIME
~Since the portal will only exist from our end... I've prepared a device that will pull us back to this plane if we want to return or if things get dangerous. Don't worry about being stranded over on the other side.~
DO ~SetGlobal("C0AuraBG2Quest2FirstTime","GLOBAL",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",1)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-1
~Oh... ohhh... I think even "extreme heat" was an understatement. This has to be nearly as hot as the sun... and the smoke... *cough* *cough*~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",2)~
== C0AURA2J ~And, um... it looks like we've got company.~
== C0AFIR01 ~Wretched primessss... what madnessss of you to intrude upon the palace of Lord V'thilix, the Almighty Csssinder... your charred corpssssesss will be a tribute to our massster...~
== C0AFIR01 ~Take pride in knowing that General Sssss'aalvlani the assshen ssspear, Hissss Lordssship'ssss loyal ssservant will be your undoing...~
DO ~Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",3)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-3
~Whew... that was pretty rough. I thought we might've been done for, trying to fight in this scorching heat...~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",4)~
= ~It looks like we appeared in a pretty bad position too, with all this magma surrounding us... I'll just teleport us back and...~
= ~*click*~
= ~...Huh?~
= ~*click* *click* *clickclickclick*... oh no, it's not working...~
END
  ++ ~What?!~ + QUEST2-FIRE-BATTLE-3-1
  ++ ~This was a terrible idea...~ + QUEST2-FIRE-BATTLE-3-1
  ++ ~Did it break during the fight?~ + QUEST2-FIRE-BATTLE-3-1

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-3-1
~No... no, I made sure it was functioning! Wait... it must be the temperature... it's damaged the mechanisms! How did I not think of that?~
= ~I... I can fix it, I promise, <CHARNAME>... it's just going to take a moment...~
END
  ++ ~We might not have a moment to spare. Look over there!~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0ACUT20")~ EXIT
  ++ ~Hurry up! There's more enemies coming our way!~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0ACUT20")~ EXIT


CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",4)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-4
~Hmph. It seems the precision of the device wasn't fully tuned to the correct level.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",5)~
== C0AUKARI ~Who are you? No denizen of the Plane of Fire, that much is obvious. Another planeswalker, then? Should I regard you as friend or foe?~
END
  ++ ~I could ask you the same question.~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-1
  ++ ~As long as you have no quarrel with us, I have no quarrel with you.~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-1
  ++ ~If you want a fight, I'll give you a fight.~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-2

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-1
~Fair enough.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-2
~Hmph. Bold, but I advise you keep your temper in check. You may regret coming into conflict with one of my ability, especially here where my magic is even greater.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-3
~In terms of introductions, you may refer to me as Karihi, arch-pyromancer and headmistress of the Academy of Flame Shapers. It is an institution created by myself in order to train arcanists hoping to master the energies of elemental fire.~
END
  ++ ~I'm <CHARNAME>.~ + QUEST2-FIRE-BATTLE-4-4
  ++ ~I feel like I've heard of you somewhere before...~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-5

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-4
~<CHARNAME>, is it? I believe I have heard tales of you, now that I think of it... quite an adventurer and troubleseeker you are, from what I hear... much like someone I know.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-5

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-5
~Perhaps you have heard of my name in the past? It has been many years since my adventuring days, but perhaps I still have a reputation outside of Silverymoon? No? No matter, there is still time, once my apprentices start to prove their merit.~
END
IF ~Dead("C0Aura")~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-DEAD
IF ~!Dead("C0Aura")~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-ALIVE

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-DEAD
~That said, perhaps we are wasting time here conversing, as I see one of your allies seems to have fallen by the hands of this plane's denizens? You are quite fortunate that I come prepared. I have a frequent need for Rods of Resurrection when faced with the ineptitude of my students.~
DO ~SetGlobal("C0AuraKarihiRevived","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
Wait(1)
ReallyForceSpellRES("SPPR712","C0Aura")
Wait(1)
ActionOverride("C0Aura",JoinParty())
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",5)
Global("C0AuraKarihiRevived","GLOBAL",1)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-4-REVIVED
~There you go.~ [C0BLANK]
DO ~SetGlobal("C0AuraKarihiRevived","GLOBAL",-1)~
== C0AURA2J ~Oww... that's a sort of pain I'd rather not feel again if I can avoid it. Oh, there you are, <CHARNAME>. And, um... who's this?~
== C0AUKARI ~Your benevolent savior, Archmage Karihi. Be grateful for my generosity, would you? I will not even charge you for this expense.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-ALIVE

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-ALIVE
~There is something familiar about your gnome companion... though I cannot put my finger on it. But I feel unnaturally at ease to see her, despite this being our first meeting...~
== C0AURA2J ~Well... it's nice to meet a friendly face. I'm Aura, of the Lantanese clan of Glimmershine.~
== C0AUKARI ~'Glimmershine'? Lantanese clan...? Ah... I see now. What an unexpected coincidence.~
== C0AURA2J ~Hmm?~
== C0AUKARI ~Your grandmother is Minerva Glimmershine, if I am not mistaken? You resemble her closely in appearance.~
== C0AURA2J ~Yes... yes! How did you know?~
== C0AUKARI ~How did *I* know? That would be quite the tale. Put simply, I had the... pleasure of travelling alongside her in my younger days. Blue-haired, wild, careless, talked too quickly and too often. But I valued her company... as uncharacteristic as it is for me to say it.~
== C0AURA2J ~You're... one of the heroes who fought in the North, aren't you?~
== C0AUKARI ~I have that honor, yes. That was a long time ago... but many of the details, I remember as well as if it were yesterday. The banishment of the devil Belhifet from this plane was perhaps my greatest accomplishment to date.~
END
  ++ ~You fought Belhifet as well?~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-6
  ++ ~Seems like we've had some similar experiences.~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-6

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-6
~It sounds as though you appear to have had your own struggles against that fiend. The incident in Dragonspear Castle, I presume? Even in Silverymoon, I have heard stories. It seems I owe you for finishing the task fully.~
== C0AURA2J ~This is... wow. I never thought I'd meet someone who fought side by side with my grandmother. I've always wanted to know more about her adventures!~
== C0AUKARI ~From your words, I take it she has yet to return home for the past century?~
== C0AURA2J ~No... nobody's seen or heard from her for ages. The only sign of her was that book.~
== C0AUKARI ~Still? That silly creature... I told her many times to return to her roots, even if only briefly... no doubt my words entered one ear and came out the other.~
== C0AURA2J ~A-hahaha... sounds like you knew her well... I'm glad. From the sounds of it, she's met some interesting friends.~
== C0AUKARI ~Hmph. That is putting it lightly. If it is of any relief to you, however, I am certain she is out there, somewhere... no doubt seeking her next tale to write into some fantastical tripe.~
== C0AUKARI ~*ahem* Though this reminiscing was pleasant, albeit unexpected, given our current location, I think it better to get to a more important point. What brings you here? Few would enter the Plane of Fire with casual intentions.~
END
  ++ ~I assumed there was something valuable here.~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-7
  ++ ~We came using a crystal attuned to this plane, thinking it might lead to something important.~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-8
  ++ ~This was all Aura's idea. She was curious.~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-9

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-7
~Ah. Seeking power, that is something I can understand.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-10

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-8
~A crystal? I see... so it seems another has been to this location in the past, and survived. Whoever did so must have been an accomplished mage, and one I would like to meet, should they still live.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-10

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-9
~Is that so? Well, she's alike to her grandmother in that respect, at least.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-10

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-10
~I personally came here as part of my research into harnessing the power of this plane into objects of power. My apprentices and I created a portal which would be attuned to powerful entities... no doubt one is close by, or on its way, if it has brought me here.~
= ~If you came seeking a challenge, one will come soon enough. If not, I presume you have a way to return to our plane, and you had best be quick with returning...~
= ~...or not. It appears that we've already drawn the attention of whoever lays claim to this particular territory.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0ACUT21")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiRetreat","GLOBAL",1)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-4
~Ngh... to think I might still miscalculate to this extent... I must withdraw!~ [C0BLANK]
DO ~CreateVisualEffectObject("ICFIRSDI","Myself")
Deactivate(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",5)~ THEN C0AFIR05 QUEST2-FIRE-BATTLE-5
~Primes... weak, fleshy creatures... you defile my palace, slay my servants... today, you shall feel pain unlike any other by the hands of V'thilix, trueborn son of Imix...~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",6)~
== C0AUKARI ~There you are, creature. I've found what I was looking for at last. Now, I suggest you submit, and make this easier for both of us.~
== C0AFIR05 ~Feeble being... you believe yourself worthy of subjugating me? Your grasp on the power of flame is nothing compared to what I am capable of... you shall suffer tenfold for your insolence!~
EXTERN C0AURA2J QUEST2-FIRE-BATTLE-5-1

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-5-1
~<CHARNAME>, I can't repair the anchoring device and help you in battle at the same time! You'll have to cover for me... I'll do my best to fix it, as quickly as I can!~
END
  ++ ~Don't worry. I'll defeat this creature.~ + QUEST2-FIRE-BATTLE-5-2
  ++ ~Just get on with it!~ + QUEST2-FIRE-BATTLE-5-2

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-5-2
~Right! You can count on me!~
= ~Wait... what's this...?~
DO ~StartCutSceneMode()
Wait(1)
ActionOverride("C0AUKARI",ForceSpellRES("C0AQEF11","C0Aura"))
ActionOverride("C0AUKARI",SmallWait(5))
ActionOverride("C0AUKARI",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",6)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-6
~There. You won't suffer any distractions within the safety of this barrier.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",7)~
== C0AURA2J ~W—whoa! This is... quite warm and comforting, actually. Don't worry, <CHARNAME>! I'm fine... I think.~
== C0AUKARI ~If the little one is going to be preoccupied, allow me to assist you in her stead. My magic will make for a more than worthy substitute.~
END
  ++ ~Thank you for your assistance.~ + QUEST2-FIRE-BATTLE-6-1
  ++ ~I don't need your help.~ + QUEST2-FIRE-BATTLE-6-2

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-6-1
~No gratitude is necessary. Consider this a... repayment towards an old debt of friendship.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-6-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-6-2
~This is no mere offer, and I do not need your approval.~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-6-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-6-3
~Sentiments aside, I would greatly like to test my potential against the strongest beings this plane has to offer. This will make for a ripe opportunity.~
== C0AUKARI ~Command me as you see fit. I am no stranger to co-operating on the battlefield. The feeling of fighting alongside others in this manner is almost nostalgic.~
DO ~ChangeEnemyAlly("C0AUKARI",CONTROLLED)
ReallyForceSpellRES("C0AQEF12",Myself)~
== C0AFIR05 ~Fools... you will all BURN!~
DO ~ReallyForceSpellRES("C0AQEF12",Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",8)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-8
~Okay... okay! I think I fixed it... oh, the fighting's over...~ [C0BLANK]
DO ~ApplySpellRES("c0aqef16","c0aura")
SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",9)~
== C0AUKARI ~And what convenient timing it is, that you were able to avoid the entirety of the battle.~
== C0AUKARI ~I have acquired what I came for. The essence of an elder fire elemental. You have my gratitude for your assistance.~
== C0AUKARI ~Hmm, this particular being was particularly powerful, and its spirit essence is highly unstable... it seems it has split into two in order to contain its energies.~
== C0AUKARI ~As a gift, I may use my art to create a magical item using one half of the elemental essence. You may have the choice of which you would prefer—a cloak to wreathe yourself in pure flame, or a black iron crown to shape the essence of fire with greater potency.~
END
  ++ ~I want the cloak.~ DO ~GiveItemCreate("C0ACLCK1",Player1,1,0,0)~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-8-1
  ++ ~I want the crown.~ DO ~GiveItemCreate("C0ACIRC2",Player1,1,0,0)~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-8-1

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-8-1
~So be it. I am certain that it will serve you well.~
== C0AUKARI ~As for you, little one... Aura, was it? I have something for you, as well. An item your... capricious grandmother left to me for safekeeping. Which, of course, she has clearly all but forgotten about for the past decades. The most appropriate act would be to pass it on to you.~
DO ~GiveItemCreate("C0ACANN1","C0AURA",1,0,0)~
== C0AURA2J ~This is... an autocannon. An older model, but still working! And... you said she left it with you decades ago... and yet it's still so well-maintained. Did you...~
== C0AUKARI ~Hmph. Don't overthink it.~
== C0AUKARI ~And... oh, I suppose you can have this as well. Something of my own creation. Perhaps an arcanist you trust may make use of it... otherwise, I am certain it should be a fascinating read for you, if you are anything like her.~
DO ~GiveItemCreate("C0ABOOK3","C0AURA",1,0,0)~
== C0AURA2J ~Thank you... ouch, it's hot!~
== C0AUKARI ~Well, what did you expect?~
== C0AUKARI ~Now then, I shall return to my home. I must not be late for my students' lecture, after all. Perhaps one day, you will see fit to visit my abode in Silverymoon? You would be most welcome.~
== C0AUKARI ~Just something to consider. Farewell.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT22")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",9)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-9
~She seemed nice.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",10)
SetGlobal("C0AuraBG2Quest2Done","GLOBAL",1)~
END
  ++ ~Behind all the arrogance and sass, sure.~ + QUEST2-FIRE-BATTLE-9-1
  ++ ~If you say so.~ + QUEST2-FIRE-BATTLE-9-1
  ++ ~Can we get out of here, now?~ + QUEST2-FIRE-BATTLE-9-2

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-9-1
~I never thought I'd meet someone outside of home who knew my grandmother personally. I'm actually kind of relieved... even though I've never met her, it sounds like we're pretty similar... and it gives me some hope she's still out there, somewhere.~
EXTERN C0AURA2J QUEST2-FIRE-BATTLE-9-2

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-9-2
~I've reconfigured the anchoring device. Just give me a signal and I'll turn it on and get us out of here. I'll give you some time to look around and pick up anything we might've missed first.~
END
  ++ ~Alright.~ EXIT
  ++ ~No need. We can go right away.~ + C0AuraBG2Quest2Done-1

CHAIN C0AURA2J C0AuraBG2Quest2Done-1
~Okay... *click*~
DO ~SetGlobal("C0AuraBG2Quest2Done","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ATELE1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceFirstTalk","GLOBAL",1)~ THEN C0AURA2J QUEST2-ICE
~The Frostfell... it's a Para-Elemental plane between the planes of air and water. From what I've read, the entire landscape is made from solid ice, and the environment is nothing but freezing winds and snowstorms. It'll take more than just wearing warm clothes to survive in there. With the extreme temperature we'd be exposed to, it might be hard to move or even breathe. We'd better prepare any sorts of protection from cold that we can.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceFirstTalk","GLOBAL",2)~
END
IF ~Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXTERN C0AURA2J QUEST2-FIRSTTIME
IF ~!Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",1)~ THEN C0AURA2J QUEST2-ICE-ENCOUNTER-1
~Ohh... brr... this is even worse than I imagined...~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",2) CreateCreatureEffect("C0AYUKI","C0FREEZE",[466.369],S)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("INTRO","LOCALS",0)
Global("C0AuraBG2Quest2IceEncounter","GLOBAL",2)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-2
~Strangers... you... you should not be here.~ [C0BLANK]
DO ~SetGlobal("INTRO","LOCALS",1)
SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~
== C0AURA2J ~A yuki-onna...~
END
  + ~CheckStatGT(Player1,30,LORE)~ + ~The 'snow-women' of the East, as I recall. They're fey spirits of the cold.~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-1
  + ~!CheckStatGT(Player1,30,LORE)~ + ~What is she, Aura?~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-2

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-1
~Yes, that's right... they live on Toril as well, in the snowy hills in Kozakura...~
EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-3

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-2
~'Snow-woman'... that's what 'yuki-onna' means. You can think of her like a snow spirit. They live on Toril as well, in the snowy hills in Kozakura...~
EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-3

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-3
~I've seen them before, or at least, I think I have... very distantly while exploring the mountains. Sometimes, I wasn't sure if I was really seeing them, or if it was just the movement of the snow.~
= ~They're often feared by humans, but they're really just shy and reclusive. We should try to talk to her, <CHARNAME>, but try not to scare her.~
END
  ++ ~Alright, then.~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-4
  ++ ~I suppose I'll try.~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-4

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-4
~You... should not be here... go, now... this place will not be safe for you...~
END
  ++ ~We mean you no harm.~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-5
  ++ ~What do you mean?~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6
  ++ ~What is this place?~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-5
~Neither I to you... if things were different, I would welcome you to this place, as it should've been...~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6
~This place was once a beautiful garden... one built from ice, where creatures of this plane could seek peace. I was its caretaker, and with my friends, we shared in the once-beautiful paradise.~
== C0AYUKI ~Our home plane... most of it is as harsh and unforgiving as it appears, but there are still those who want to seek comfort, and friendship, and peace. I was here to give them a home. Once, it was all perfect.~
== C0AYUKI ~But then... the ice hag, Ishallir found us, found this place... she is utterly hideous, and hateful, and evil. She was the very antithesis of the beauty we shared, and sought to destroy it.~
== C0AYUKI ~My friends fought her, but were frozen, one by one, their corpses turned into statues of ice as horrible trophies, monuments to her destruction... what was once a paradise because a terrible garden of death, where any who meets her gaze becomes another statue, frozen for eternity.~
== C0AURA2J ~That's awful...! To create a garden of beauty in such an unforgiving plane, only for an evil being to tear it all apart.~
== C0AYUKI ~I alone escaped her wrath, taking the last flower of our garden with me in the hopes that one day, everything may be regrown... but I am too weak. Soon, Ishallir will find me. When she does... you must not be here, or you will meet the same fate as everyone else...~
END
  ++ ~I'm not afraid of this hag. Maybe I can do something to help you.~ + QUEST2-ICE-ENCOUNTER-2-7
  ++ ~Your story is a sad one. If you want me to help you defeat this hag, you only need to ask.~ + QUEST2-ICE-ENCOUNTER-2-7
  ++ ~Perhaps I would be willing to help... if there is something you can offer in return.~ + QUEST2-ICE-ENCOUNTER-2-7
  ++ ~Well, that's terrible. I'd rather not be here to witness it, though. Aura, get us out of here.~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-8

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-7
~No, I cannot ask that of you, kind one... and there little I can give. Everything has been claimed by the hag... all I hope is to never see another innocent become a victim to her malice and hatred.~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-9

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-8
~But, <CHARNAME>, are you sure we can't do anything? Look at her... she looks so sad, and grim. There's no hope for her here on her own.~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-9

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-9
~There is only a little time before the last of my wards are broken by the hag's magic... what little beauty there is left to witness here, I welcome you to see, and remember... before it is all lost...~
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber(Player1)
Global("INTRO","LOCALS",1)
Global("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-2A
~Please, leave while you can. I am glad someone is here to see the last traces of beauty here... but it is not worth your life.~ [C0BLANK]
END
  ++ ~I can't ignore seeing someone in need. I want to help you.~ + QUEST2-ICE-ENCOUNTER-2A-1
  + ~InParty("C0Aura")~ + ~Right. Let's get out of here, Aura.~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2A-0

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2A-0
~...Alright. I don't feel good about this, but you're the one in charge... and I can't force you to stay in a dangerous place like this.~
= ~Reconfiguring the anchoring device... we'll be out of here soon. I'm sorry, yuki-onna... *click*~
DO ~SetGlobal("C0AuraBG2Quest2Done","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ATELE1")~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2A-1
~But... it will be dangerous. The hag is powerful. Even the strongest of my friends could not withstand her cold magic... would you truly face her for a creature like me?~
END
  ++ ~Don't worry. I'm sure I'll be able to handle it.~ + QUEST2-ICE-ENCOUNTER-2A-2
  ++ ~I've faced all sorts of monsters. A hag doesn't sound so scary.~ + QUEST2-ICE-ENCOUNTER-2A-2
  + ~InParty("C0Aura")~ + ~On second thought, maybe you're right. I should get out of here.~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2A-0

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2A-2
~Thank you... thank you! There... may be hope for my garden again, if you succeed... I will never forget your bravery and kindness, warm one.~
= ~When you are prepared, I may dispel my wards and allow the hag to come. She will arrive eventually regardless... but this way, you will be prepared.~
= ~Be warned... the ice hag commands the freezing wind itself, and there is no escaping it. You must weather the cold with your fortitude. Tell me when you are ready.~
DO ~SetGlobal("INTRO","LOCALS",2)~ EXIT

CHAIN IF WEIGHT #-1 ~IsGabber(Player1)
Global("INTRO","LOCALS",2)
Global("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-2B
~Are you prepared, kind one?~ [C0BLANK]
END
  ++ ~Alright. Dispel your wards, and allow the hag to come.~ + QUEST2-ICE-ENCOUNTER-2B-1
  + ~OR(2) !Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) !Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~If there's time, I'd like to ask a few questions. About you and this garden.~ + QUEST2-ICE-ENCOUNTER-2B-2
  ++ ~I'm not ready yet. Just a little bit longer.~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-1
~Very well. For this battle, I will fight together at your side... for my friends both old and new. If the hag claims you, then I will join you in the endless cold.~
= ~Now, be ready. She comes...~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
CreateVisualEffect("SPSPEV",[322.468])
Wait(2)
CreateCreature("C0AICE01",[322.468],SW)
Wait(1)
ActionOverride("C0AICE01",FaceObject("C0AYUKI"))
Wait(1)
ActionOverride("C0AICE01",FaceObject(Player1))
Wait(1)
ActionOverride("C0AICE01",StartDialogNoSet(Player1))~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-2
~There is some time yet... what would you like to know?~
END
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",0)~ + ~Can you tell me about the yuki-onna?~ DO ~SetGlobal("C0AuraBG2Quest2IceQ1","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-3
  + ~Global("C0AuraBG2Quest2IceQ2","GLOBAL",0)~ + ~What was this garden like, before the hag arrived?~ DO ~SetGlobal("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-4
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~I haven't even asked yet. What is your name?~ + QUEST2-ICE-ENCOUNTER-2B-5
  ++ ~Never mind. Dispel your wards, and allow the hag to come.~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~Actually, I need to prepare for the hag. Wait just one moment.~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-3
~We are spirits, born in this plane. Many like yourself have encountered many evil examples of our kind... those who venture into your realm, who seek to ensnare and torment mortals for their cruel whims.~
= ~Those who choose to remain in our home are gentler, and only seek to create beauty and preserve life... there are few of us, relative to our crueler fellows. But many of us were once together here, nurturing our garden. Until Ishallir claimed all of my sisters...~
END
  + ~Global("C0AuraBG2Quest2IceQ2","GLOBAL",0)~ + ~What was this garden like, before the hag arrived?~ DO ~SetGlobal("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-4
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~I haven't even asked yet. What is your name?~ + QUEST2-ICE-ENCOUNTER-2B-5
  ++ ~Never mind. Dispel your wards, and allow the hag to come.~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~Actually, I need to prepare for the hag. Wait just one moment.~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-4
~I wish you, and many others could have seen it... within the harsh, rough tundra, this small piece of land was once full of life... creatures of the ice and snow played and frolicked here freely, and the earth was blooming with trees and flowers, all grown from living ice and snow.~
= ~It seems impossible, but such is the care that I and my sisters gave to the land, that we could create such a haven... one day, it may be so once again.~
END
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",0)~ + ~Can you tell me about the yuki-onna?~ DO ~SetGlobal("C0AuraBG2Quest2IceQ1","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-3
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~I haven't even asked yet. What is your name?~ + QUEST2-ICE-ENCOUNTER-2B-5
  ++ ~Never mind. Dispel your wards, and allow the hag to come.~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~Actually, I need to prepare for the hag. Wait just one moment.~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-5
~My... my name? It is Shirayuri... named after the flowers that once grew here. My older sisters gifted me with this name, soon after I found this place... it was they who tended to our garden before myself.~
END
  ++ ~It's a beautiful name. Just like yourself.~ DO ~SetGlobal("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-6
  ++ ~I'll be sure to remember it, even once I'm gone from here.~ + QUEST2-ICE-ENCOUNTER-2B-7
  ++ ~That's enough talk. Summon the hag. I'm ready to fight.~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~Actually, I need to prepare for the hag. Wait just one moment.~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-6
~I... I thank you... I have never seen anyone like yourself. If there are more with your kindness from where you come, even if it is only a few... I would like to see your world one day, just as you see mine...~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-7

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-7
~What is your name, dear <PRO_RACE>? I would like to remember it... if the hag does not claim us. Even if it happens... I would still like to know.~
END
  ++ ~<CHARNAME>.~ + QUEST2-ICE-ENCOUNTER-2B-8
  ++ ~Forget it. We should deal with the hag.~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~Never mind my name. Give me another moment to prepare.~ + QUEST2-ICE-ENCOUNTER-2B-11

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-8
~<CHARNAME>... I like this name.~
END
IF ~Global("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-9
IF ~!Global("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-10

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-9
~Please, beautiful, strong <PRO_RACE>. Win, and live... I hope you will not die here. I do not want to see it.~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-11

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-10
~I hope you will not die here, <CHARNAME>... as a new friend, one I will speak of to other new friends one day.~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-11

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-11
~Talk to me when you are prepared to fight the hag... today, her evil must end.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0ShirayuriRetreat","GLOBAL",1)~ THEN C0AYUKI QUEST2-ICE-RETREAT
~F—forgive me, my friend... I can fight no longer. I will... I will return once my wounds are healed.~ [C0BLANK]
DO ~CreateVisualEffectObject("SPSOLBRD","Myself")
Deactivate(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~ THEN C0AICE01 QUEST2-ICE-ENCOUNTER-3
~Ahh, there you are. There you are, pretty thing...~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",4)~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~A bheur... I've only ever read about them in old anthologies of magical beings in northeastern Faerûn. Be careful, <CHARNAME>... their hearts are as black and cold as they appear, and their ice magic is deadly.~
== C0AYUKI ~Ishallir... finally, we meet again. I will not run, this time.~
== C0AICE01 ~Kyeh heh heh... good, that is good indeed. So, shall you finally accept your fate, and join your lovely sisters in their eternal embrace? Or perhaps beg, and provide me with a modicum of amusement?~
== C0AYUKI ~I may be willing to beg, but not for myself. Though I already know the answer... I will ask once regardless. Will you return my friends to me?~
== C0AICE01 ~Kyeh HEH! So, that is your position, is it? I will commend you on your bravery, my dear... but you should already know. My answer is no.~
== C0AYUKI ~It is as I feared... but for my own sake, I had no choice but to ask... the memory of fleeing in fear as my sisters attempted to put an end to your destruction haunts me more than the thought of death ever will. To this day, I regret that they all had to be sacrificed so that I may live. But now... I finally feel my action was no mistake, as I no longer stand alone.~
== C0AICE01 ~Oh? Heh... these old eyes do not play tricks on me, I see... there are indeed guests to this frozen domain. Welcome, godchild. I do hope you find the chill of the Frostfell comforting.~
END
  ++ ~You know who I am?~ + QUEST2-ICE-ENCOUNTER-4
  ++ ~It's a bit chilly, but I'll get used to it~ + QUEST2-ICE-ENCOUNTER-5
  ++ ~Time to die, hag!~ + QUEST2-ICE-ENCOUNTER-6

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-4
~I know *what* you are, godchild. The reek of murder clings to you, though you may or may not attempt to conceal it... personally, I find it rather appealing.~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-7

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-5
~Kyeh heh! It seems you have a sense of wit about you, quite unlike the boring souls similar to you I have encountered before. This old crone may become rather fond of you.~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-7

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-6
~Now, now. Is that any way to greet a host, godchild? Needless to say, this former garden, and all the lands within sight, belong to me. You had best mind your manners.~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-7

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-7
~I did think it rather curious that the snow woman allowed me entry, just while I was finding some amusement in tearing down her wards, one by one... but I see now what her intent is. Do you seek to use the godchild as another sacrifice to save yourself, as you did your sisters?~
== C0AYUKI ~No... never again. The brave <PRO_RACE> chose to stand with me against your cruelty. But I had hoped, seeing that I would not be as easy prey as you expected, you may choose to relent, and spare whatever beauty that you have not yet corrupted.~
== C0AICE01 ~You believe I fear the godchild? I have watched many of <PRO_HISHER> like wither and fade with time. Such a shame to see how easily even those burdened with divinity may fall... perhaps I shall show some mercy, and immortalize <PRO_HIMHER> as well within my collection.~
== C0AYUKI ~So we must fight? There truly is no beauty in your heart.~
== C0AICE01 ~*spit* Beauty? It is your beauty that offends me, spirit. Your very existence heats this crone's blood with rage, knowing of the existence of those so privileged, so arrogant in flaunting what is freely given. How *dare* you be beautiful? For that alone, I see reason to crush all that you hold dear to dust.~
== C0AYUKI ~Is the surface all you ever see, Ishallir? I remember, though I was little more than a child, the first day we met... after suffering a defeat against your own coven, it was my sisters who saw past your face, and offered you a home in our garden. Yet you saw nothing but mockery in what we had created, and betrayed our kindness by turning it all into your own twisted image.~
== C0AICE01 ~Kyeh heh heh... yes, I remember well... and a much finer sight to mine own eyes, this place, as it is now.~
== C0AYUKI ~And it is still not enough to you? This last flower is all that remains of what once was. It will never bloom again in these lands, so long as you are here. Leave it be... find some mercy in your heart.~
== C0AICE01 ~KYEH! You truly are brave, to seek mercy within the heart of a hag... so be it... I can find a little bit of mercy, should I wring with all my might. The flower, and you, cannot be suffered to exist... but I will allow our unexpected guests to leave unharmed.~
== C0AICE01 ~And, as I am feeling generous... should you surrender, I will give your fair shape some dignity in its everlasting frozen form. Otherwise... I will be certain to make what remains of you into an image that would make even my eyes squint and turn away in disgust.~
== C0AYUKI ~You seek to stoke my fear... but I understand you better than you think, Ishallir. You would never hold true to the spirit of your word... you have proven that already.~
== C0AICE01 ~Kyeh heh... and? Do you seek to make a final display of defiance, knowing how feeble your power is against mine? It would be such a pity to crush you all under the ice, before I even had a proper chance to play!~
END
  ++ ~Enough, hag. Your evil ends here and now.~ + QUEST2-ICE-ENCOUNTER-8
  ++ ~You sure like to talk. I'm ready to fight just to shut you up.~ + QUEST2-ICE-ENCOUNTER-8
  ++ ~Actually, I was just thinking I needed to be off somewhere...~ + QUEST2-ICE-ENCOUNTER-9

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-8
~Aye, so it shall be, then, and all the better. I have not had proper entertainment since my victory for too long!~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-10

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-9
~Kyeh heh! No, I do not think so. You have entered the field, and so you are a player in this game whether you like it or not, godchild! From the moment I laid eyes upon you, your fate has been sealed!~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-10

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-10
~There shall be no escape! Prepare yourselves, for you shall see what it means to face the Frostfell itself!~
== C0AYUKI ~My newest, and now dearest friend... forgive me for your part in this, but I thank you for standing with me... I will protect you against the cold of this realm with my magic.~
== C0AICE01 ~Ohohoho! You will all be lovely for my collection, your bodies trapped in ice! Come, my darling pets!~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
ForceSpellRES("c0auice1",Myself)
CreateCreatureEffect("c0auice1","SPWHIRL",[651.310],0)
SmallWait(5)
CreateCreatureEffect("c0auice1","SPWHIRL",[458.468],0)
SmallWait(5)
CreateCreatureEffect("c0auice1","SPWHIRL",[848.474],0)
SmallWait(5)
CreateCreatureEffect("c0auice1","SPWHIRL",[650.617],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",5)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-4
~She... is dead. The hag, she is no more.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",6)~
== C0AYUKI ~Thank you... thank you, brave one. This world will be once again as it was, untainted by death. One day, it will be full of life again.~
== C0AYUKI ~I did not know mortal souls could have such kindness... you risked death to protect me, and protect this place.~
== C0AYUKI ~Please take my bow. It carries the spirit of the winter in it... I hope it will keep you safe in your world.~
DO ~GiveItem("c0abow1",Player1)~
== C0AYUKI IF ~Global("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ THEN ~And... I'm very happy to have met you, and it is difficult to say goodbye. Please accept this kiss...~
DO ~AddJournalEntry(%quest_snow_kiss%,QUEST_DONE)
ApplySpellRES("C0AICES0",Player1)~
== C0AYUKI IF ~OR(6)
  HPPercentLT(Player1,1)
  HPPercentLT(Player2,1)
  HPPercentLT(Player3,1)
  HPPercentLT(Player4,1)
  HPPercentLT(Player5,1)
  HPPercentLT(Player6,1)~ THEN ~As for your companions who have fallen in battle... I sense their spirits lingering here, and I can guide them back to their mortal bodies.~
DO ~ReallyForceSpellRES("SPPR550",Player1)
ReallyForceSpellRES("SPPR550",Player2)
ReallyForceSpellRES("SPPR550",Player3)
ReallyForceSpellRES("SPPR550",Player4)
ReallyForceSpellRES("SPPR550",Player5)
ReallyForceSpellRES("SPPR550",Player6)~
== C0AYUKI ~Goodbye, my friend.~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0AuraBG2Quest2IceEncounter","GLOBAL",5)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-5
~Goodbye, my friend.~ [C0BLANK]
END
  + ~OR(6)
  HPPercentLT(Player1,1)
  HPPercentLT(Player2,1)
  HPPercentLT(Player3,1)
  HPPercentLT(Player4,1)
  HPPercentLT(Player5,1)
  HPPercentLT(Player6,1)~ + ~Can you help me raise my fallen friends?~ + QUEST2-ICE-ENCOUNTER-5-1
  ++ ~I hope to see your garden restored one day.~ + QUEST2-ICE-ENCOUNTER-5-2
  ++ ~Goodbye.~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-5-1
~Of course.~
DO ~ReallyForceSpellRES("SPPR550",Player1)
ReallyForceSpellRES("SPPR550",Player2)
ReallyForceSpellRES("SPPR550",Player3)
ReallyForceSpellRES("SPPR550",Player4)
ReallyForceSpellRES("SPPR550",Player5)
ReallyForceSpellRES("SPPR550",Player6)~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-5-2
~I hope I can show you as well... you will always be welcome, when that day comes.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",6)~ THEN C0AURA2J QUEST2-ICE-ENCOUNTER-3
~I hope she'll be able to bring this place back to life... maybe if we find another power crystal, we can come back one day and see her again?~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",7)~
== C0AURA2J ~Anyway, I've tuned the anchoring device to bring us home, <CHARNAME>. We can go whenever you're ready.~
DO ~SetGlobal("C0AuraBG2Quest2Done","GLOBAL",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2Done","GLOBAL",1)~ THEN C0AURA2J C0AuraBG2Quest2Done
~Ready to go?~ [C0BLANK]
END
  ++ ~Yes.~ + C0AuraBG2Quest2Done-1
  ++ ~Not yet.~ EXIT

EXTEND_BOTTOM PPSAEM 52
 IF ~InParty("C0Aura")~ THEN EXTERN C0AURA2J C0AuraC4CutScene
END

EXTEND_BOTTOM PPSAEM 13
 IF ~InParty("C0Aura")~ THEN EXTERN C0AURA2J C0AuraC4CutScene
END

CHAIN C0AURA2J C0AuraC4CutScene
~Hmm...? That sound...~
END
  ++ ~What is it, Aura?~ EXTERN C0AURA2J C0AuraC4CutScene-0
  ++ ~Stop daydreaming. We're about to board.~ EXTERN C0AURA2J C0AuraC4CutScene-0

CHAIN C0AURA2J C0AuraC4CutScene-0
~Ah... nothing, <CHARNAME>. I thought I just heard the familiar voice humming across the wind... but that's impossible...~
== PPBODHI3 IF ~InMyArea("ppbodhi3")~ THEN ~Fascinating. This mystery chanter's voice is powerful enough to be carried over the sea, without magic.~
== PPARAN2 IF ~InMyArea("aran")~ THEN ~Quite a resounding baritone, for us to hear it from here. Yet, I can sense it is not magical in nature.~
== C0AURA2J ~I must just be feeling homesick... it just sounds so much like—nevermind. Let's go, <CHARNAME>.~
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",1)~ THEN C0AQINT2 C0AuraC4CutScene-1
~That is his ship. So he has arrived at last.~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",2)~
== C0AQINT1 ~That humming... what meaning does it hold?~
== C0AQINT3 ~Who knows. I do not believe it to be noteworthy.~
== C0AQINT2 ~Do not underestimate the High Artificer of the Eleventh. Remain on your guard at all times, and be prepared in case of the worst.~
== C0AQINT3 ~Must we be so ill at ease? Regardless of what power he holds in the fatherland, he is still but an inventor, like any other. What could be—~
== C0AQINT2 ~Quiet! He comes.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS2")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",2)~ THEN C0AQINT2 C0AuraC4CutScene-2
~Master Dedalus, good eve... it has been a long time since we last met. I trust you have fared well? The journey by sea was no trouble, as I can deduct from hearing the robustness of your voice.~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",3)~
== C0DEDAL ~Your bodyguards may leave.~
== C0AQINT1 ~What?!~
== C0AQINT3 ~Sir...~
== C0AQINT2 ~Do as he says. Go and stand guard while the two of us talk.~
== C0DEDAL ~The four in the shadows as well.~
== C0AQINT2 ~...Them too.~
== C0AQINT3 ~Yes, sir.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",3)~ THEN C0AQINT2 C0AuraC4CutScene-3
~*ahem*... heh, beg pardon, most esteemed one. A precaution, as I hope you can understand.~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",4)~
== C0DEDAL ~...~
== C0DEDAL ~I believe you owe me an explanation, Otho.~
== C0AQINT2 ~Do I? And what has the Interitus done to earn your ire?~
== C0DEDAL ~Against the will of the Ayrorch, I have provided you with a duty, and the chance to work towards the future of the homeland. Had you done as required, I would not be here tonight. The unsanctioned distribution of unstable Titan, sequestering the Eleventh Workshop's prototype automation...~
== C0DEDAL ~And there is the matter of your attempts on the life of my young niece.~
== C0AQINT2 ~Your Eminence, sir, a moment... I believe the long journey has taken leave of your senses. These are some rather heavy accusations you are imposing, and quite unfounded. Feeble as we are now, the Interitus still owes all that we are now to your benevolence.~
== C0DEDAL ~Enough, Otho. What you have done of your own accord, and its consequences, will be evaluated in due time. I am here for the results of your work, no more. The "L'an Elementume Vitaer", if you will.~
== C0AQINT2 ~Of course, of course. Returned to its rightful owner, as it should be. Along with the newly-acquired research, though it is no doubt primitive compared to the magnificent works of your former teacher, or High Artificer Glaphyra... rest her soul.~
== C0DEDAL ~...~
== C0AQINT2 ~Ah... I take it you prefer not to be reminded of your late sister, Your Eminence. Forgive me for my impertinence.~
== C0DEDAL ~That is all in the past, Otho. We Lantanna look to the future, and never allow our failures to cloud our judgment. You still understand this simple creed, I hope?~
== C0AQINT2 ~I... well, of course I do, Your Eminence. My pride as a member of the homeland is without question.~
== C0DEDAL ~Good. Then you and all under your command are to cease all your current activity and return with me to Lantan, without delay.~
== C0AQINT2 ~What?!~
== C0DEDAL ~I have been patient, Otho. Where our kin see naught but the crimes of your predecessors, I offered you the benefit of the doubt, that you would faithfully serve the land you claim to love when given the opportunity. And while I do not condone the beliefs of your organization, your contribution up to now has been of undeniable merit.~
== C0DEDAL ~However... while I am willing to compromise on many things, your recent actions have gone beyond the terms of our cooperation. Our duty is to the homeland, and while that may mean we must be prepared for the potential threat of the outerlands... that does not equate to deliberately sowing discord, nor using innocents as your disposable test subjects.~
== C0DEDAL ~And... turning our own creations upon another Lantanna, putting further weight on your past sins... you have crossed a line, Otho, one which I cannot overlook.~
== C0AQINT2 ~Please, Your Eminence. I am willing to acknowledge my errors in judgment. Perhaps we overstepped in our experimentation with your teacher's research... but Interitus would never act against Lantan, nor any Lantanna who calls it home.~
== C0DEDAL ~These games of deception are beneath us. I am well aware that the Eye of Akintaer was believed lost in the Great Ice Sea, along with my niece, six years ago. To find out that it has been in your possession all this time... you have kept many secrets from me.~
== C0AQINT2 ~Ah... I see. It seems that I have underestimated your information network. You may have taken us under your wing, but it seems even then, you still have never trusted us fully.~
== C0DEDAL ~You have had as much of my trust as is deserved. I offered you a chance... a choice not to repeat your mistakes, and you have chosen wrongly. This must end, Otho. No more.~
== C0AQINT2 ~End? No, I fear it cannot end so easily, not while our nation's safety hangs by a thread... as a fellow Lantanna, surely you would be willing to hear my case, before rushing to a decision?~
== C0DEDAL ~...~
== C0DEDAL ~I am listening.~
== C0AQINT2 ~Your Eminence, look around you... at this primitive scene before you. If I may ask, what do you see?~
== C0DEDAL ~...~
== C0DEDAL ~A realm engulfed in darkness.~
== C0AQINT2 ~Pitiable, is it not?~
== C0AQINT2 ~I will not deny that we who serve Interitus view these barbarians of the outerlands with a contempt that those who have lived in our nation's comforts... those who have never seen the stupidity, the brutality and ignorance, would understandably balk at. Few have the vision of those like yourself, who are wise enough to truly see the threat that looms beyond us. That darkness will consume us as well, one day, should we not act.~
== C0AQINT2 ~You may question our methods, but you may never doubt our loyalty. We live to serve the interests of our home, yet that service requires more than to simply protect ourselves. What our people need is not a shield, but a blade. After all... what do you carry your blade for, Your Eminence?~
== C0DEDAL ~...~
== C0DEDAL ~For duty. For the safety and prosperity of Lantan, and the minds that have shaped it into our home.~
== C0AQINT2 ~That is what we all wish to see, is it not? To see Lantan, our glorious nation, that rightfully deserves to be above these ignorant savages, rise above and topple the benighted?~
== C0DEDAL ~And that is what you truly desire? You, and all who wear your colors?~
== C0AQINT2 ~It is what *all* Lantanna should aspire for, Your Eminence.~
== C0DEDAL ~I see.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS4")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",4)~ THEN C0DEDAL C0AuraC4CutScene-4
~As I said... my duty is to the immutable security of the homeland. And that includes the removal of *all* destabilizing elements, from wherever they might originate.~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",5)~
== C0AQINT2 ~Hrgh *cough* gah...~
== C0DEDAL ~The role of the Interitus is done. Your leader will not outlast you for long, nor your compatriots. Though it seems this was unavoidable, I regret nonetheless that this has to be done.~
== C0AQINT2 ~D—damn... you, Dedalus Dinelstr... nngh...~
== C0DEDAL ~It's over, Otho.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS5")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",5)~ THEN C0DEDAL C0AuraC4CutScene-5
~"To rise above and topple the benighted"? Hmph, and would we even recognize ourselves then...?~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",6)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS6")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",6)~ THEN C0AFRITZ C0AuraC4CutScene-6
~The remainder of Interitus have been cornered and neutralized. I've also received word from Lantan that Oculus has sent agents to their leader's safehouse, using the information we gave to them in secret.~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",7)~
== C0DEDAL ~I see. Well done, Fritz.~
== C0AFRITZ ~What next, director?~
== C0DEDAL ~Take them home and bury them in our soil. They deserve that much.~
== C0AFRITZ ~It will be done.~
== C0DEDAL ~...Fritz.~
== C0AFRITZ ~Yes, sir?~
== C0DEDAL ~In the past decade of my actions for our homeland, my blade has been stained with naught but the blood of fellow Lantanna. Is this not laughable?~
== C0AFRITZ ~Director, you...~
== C0DEDAL ~I am far beyond regrets. And yet, how did it come to this? We were meant to be one people, the pioneers of the Realms's future. This was never meant to be the way.~
== C0AFRITZ ~We... knew what taking this path would cost us, teacher. All of us did. We all chose it regardless.~
== C0DEDAL ~...~
== C0DEDAL ~How fares your father, Fritz? Have you received his letters?~
== C0AFRITZ ~I... yes. He is not well. I have responded to him, many times, urging him to consider retirement... but he will not hear of it. Not so long as he believes the Ayrorch needs him.~
== C0DEDAL ~Perhaps you should return to Lantan and see him. I give you leave to. Over a century's loyal service... he deserves a loved one at his side for his remaining years.~
== C0AFRITZ ~When my mission here is complete... director, I hope you understand one crucial thing.~
== C0AFRITZ ~It was never a choice I had to make between you, my teacher, against my father. I wish to be the shield for our homeland, just as you... just as he. When the time comes, he will understand.~
== C0DEDAL ~I do not doubt you, Fritz. I merely do not wish for you to follow me believing my way is the sole truth. There will be those who oppose me, with logical reason. It may be your father, my brother, my nieces... none of them would approve of what I have done. Especially not Aurelia.~
== C0AFRITZ ~Dame Aurelia... did you not plan to meet her, director? If we follow that ship, we might still—~
== C0DEDAL ~No. I believe she is steadfast towards whatever cause she is working towards. I do not want to impede her.~
== C0DEDAL ~We will continue our plans here and await her return. Come, Fritz.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS7")~ EXIT

// QUEST 3

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",1)~ THEN C0AURA2J quest3
~Ahh... it's so lovely to finally see the sky again. I don't know how long it's been since we sailed away from Amn, but it feels like it's been forever.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",2)~
= ~I know we still have a task to complete, but before we go hunting down those vampires, I was hoping we could go back to the Jansens and have a look at my workshop, <CHARNAME>. It's not anything important, but now that we're back, I just want to be sure that everything's the way I left it.~
END
  ++ ~Alright. There's a few places I'd like to go first as well.~ + quest3-1-1
  ++ ~We don't have time, Aura. Dealing with Bodhi is more important.~ + quest3-1-2

CHAIN C0AURA2J quest3-1-1
~Thank you, <CHARNAME>. There's no rush, but if we could stop by if we have a chance, it would make me really happy.~
EXIT

CHAIN C0AURA2J quest3-1-2
~You're right. Maybe afterwards, assuming nothing goes wrong, then? I just want to take a quick look.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",3)~ THEN C0CARNIF quest3-3
~Woof! Arooo! *pant* *wag*~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",4)~
== C0AURA2J ~Carnifex? Is that you? Then that means... *gasp* Juno's here in the city, isn't she?~
END
  ++ ~Do you recognize this hound?~ EXTERN C0AURA2J quest3-3-1
  ++ ~He belongs to your sister?~ EXTERN C0AURA2J quest3-3-2

CHAIN C0AURA2J quest3-3-1
~Yes, he's been my sister's partner for many years, and a very well-trained hunting hound.~
EXTERN C0AURA2J quest3-3-2

CHAIN C0AURA2J quest3-3-2
~Juno rescued him when we were camping together in the jungle, a long time ago. He was still just a tiny pup back then. And even though he looks scary—and definitely is, if you're a criminal, he's very friendly to everyone in my family.~
= ~If he's here... Juno wants to see me again, doesn't she? Is Luna here too? I have to find out! Carnifex, where are they right now?~
== C0CARNIF ~Woof!~
DO ~EscapeArea()~
== C0AURA2J IF ~AreaCheck("AR0400")~ THEN ~It looks like... he's heading towards the Jansen home. My sisters must be waiting for me there! <CHARNAME>, let's go right now!~
== C0AURA2J IF ~!AreaCheck("AR0400")~ THEN ~It looks like... he's heading towards the slums. My sisters must be waiting for me at the Jansen home! <CHARNAME>, let's go right now!~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",5)~ THEN MAJAN quest3-5
~Oh, there she is, the little darling! Back from her adventures at last!~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",6)~
== C0AURA2J ~I was right! It was you two...~
== C0AJUNO ~Surprise, baby sister.~
== C0AURA2J ~...Juno!~
DO ~ClearAllActions()
StartCutSceneMode()
MoveToObjectOffset("C0AJUNO",[15.0])
Wait(2)
ActionOverride("C0AJUNO",FaceObject("C0AURA"))
ActionOverride("C0AJUNO",SmallWait(1))
ActionOverride("C0AJUNO",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",6)~ THEN C0AJUNO quest3-6
~Oof...! You really have grown. That was almost enough to topple me over.~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",7)~
== C0AURA2J ~I'm sorry, Juno, I'm just... so happy to see you! It's been so long...~
== C0AJUNO ~That's right, it has. You've got a lot of stories to tell us all, for sure. And don't you two think you should say something... Luna? Uncle?~
== C0ALUNA ~...I'm glad to see you didn't get yourself into too much trouble.~
== C0DEDAL ~Yes... it's good to see you have been well, Aurelia. Though I believe your companion should come forth so that we can have a proper introduction.~
== C0AURA2J ~That's right... <CHARNAME>, over here! I want you to meet my family.~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,MoveToPoint([350.330]))
ActionOverride(Player1,SmallWait(1))
ActionOverride(Player1,Face(W))
Wait(5)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",7)~ THEN C0AURA2J quest3-7
~<CHARNAME>, these are my older sisters, Juno and Luna. And that's my uncle, Dedalus Dinelstrand.~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",8)~
== C0DEDAL ~I greet you warmly. Your name is well-known across the Sword Coast, and even Lantan has heard tales of your exploits.~
== C0ALUNA ~...Hello.~
== C0AJUNO ~You have all our gratitude for taking care of our young, inexperienced sister throughout her journey, <CHARNAME>. Although I can tell she's far from inexperienced these days.~
END
  ++ ~You don't have to thank me. Aura's been an irreplacable companion.~ EXTERN C0AURA2J quest3-7-1
  ++ ~I'm glad I can finally meet her family. She's talked a lot about you.~ EXTERN C0AURA2J quest3-7-1
  ++ ~Don't mind me. You and Aura all have a lot to catch up on.~ EXTERN C0AURA2J quest3-7-1

CHAIN C0AURA2J quest3-7-1
~So what brings you all from the homeland to here, Juno? Just to visit me? I wrote that it wouldn't be too long before I'd visit home.~
== C0AJUNO ~And that means we shouldn't come and see our dear sister ourselves, given the chance? Aw, that hurts... no, I'm joking. Actually, it was our uncle's idea to come and see you ourselves.~
== C0AURA2J ~Really? Uncle, you're leading the Eleventh Workshop. Is it okay for you to just leave Lantan for a personal visit?~
== C0DEDAL ~Hmm... the responsibilities of a High Artificer are heavy, but I have a responsibility to family above all, child. It was a favor to Kairos. He would have preferred to see you himself, but he has no such opportunity. Thus, I came in his stead.~
== C0AURA2J ~What's been going on with father? Nothing bad, right, uncle?~
== C0DEDAL ~No, not... well, it depends on your perspective, I suppose. The Ayrorch are assessing him as a candidate for joining the council.~
== C0AURA2J ~Really?! That's... the council hasn't changed members as far as I can remember. I thought it'd be years before a new Santar was elected.~
== C0DEDAL ~Many other believed so as well. However, the High Tribunus Constantine has saw fit to retire in his old age, and so the council must find his replacement. It is not a guarantee that your father will be chosen yet, but if he is, there will be great changes for the Glimmershine clan. It is for that reason he could not come to Amn.~
== C0ALUNA ~Not that he didn't try his hardest. Uncle argued with him for hours before he finally decided to relent.~
== C0AJUNO ~*ahem*! I'm sure we can tell Aura everything that's been going on in the homeland in suitable time. Right now, I think we should spend some time to celebrate, don't you think, uncle?~
== C0DEDAL ~Of course.~
== C0AJUNO ~Let's go upstairs and talk, sister. I want to hear all about everything you've been through.~
== C0AURA2J ~I'd really love to, Juno, but, um... I've still got...~
END
  ++ ~Go ahead, Aura. You shouldn't miss this chance.~ EXTERN C0AURA2J quest3-7-2
  ++ ~Don't worry. I can take care of things without you for a while.~ EXTERN C0AURA2J quest3-7-2
  ++ ~I still need her help.~ EXTERN C0AJUNO quest3-7-3

CHAIN C0AURA2J quest3-7-2
~Thank you, <CHARNAME>. Don't worry, I'll be sure to catch up to you when I have a chance.~
EXTERN C0AURA2J quest3-7-4

CHAIN C0AJUNO quest3-7-3
~Ah... yes, I should not forget that. Aura, if there is something more important on your hands, you can...~
== C0AURA2J ~No, I... I'm sorry, <CHARNAME>, but I really would like to stay for at least a little while.~
EXTERN C0AURA2J quest3-7-4

CHAIN C0AURA2J quest3-7-4
~In the meantime, there's still a way I can help you... if I'm going to be away from you for a while, why don't I give you access to the master control of my automaton? I'm sure you can understand the basics of commanding it, after seeing me do it for so long.~
DO ~SetGlobal("C0AuraBG2AutomatonControl","GLOBAL",1)~
= ~Just give it the order to follow you if you need it. I can still help you indirectly like this, even if I won't be around.~
END
  ++ ~Are you sure you don't need it for yourself?~ + quest3-7-5
  ++ ~That'll help a lot. Thank you, Aura.~ + quest3-7-6
  ++ ~It'll have to do. Just don't stay here for too long.~ + quest3-7-6

CHAIN C0AURA2J quest3-7-5
~Teehee, I think the danger we've gone through is affecting you, <CHARNAME>. What's going to happen to me here? Besides, I have Juno with me. You haven't seen what she's like with a bow yet.~
EXTERN C0AURA2J quest3-7-6

CHAIN C0AURA2J quest3-7-6
~I'll find you as soon as I've said goodbye to my family and seen them off. Take care of yourself, okay?~
== C0AURA2J ~Let's go, Juno. I've got the perfect blend of tea to share while we talk! Oh, and you should join us for a little bit before you go too, <CHARNAME>.~
DO ~SetGlobalTimer("C0AuraBG2QuestTime3Timer","GLOBAL",ONE_DAY)
ActionOverride("C0AJUNO",EscapeAreaMove("AR0403",671,419,NE))
ActionOverride("C0ALUNA",EscapeAreaMove("AR0403",752,361,SW))
ActionOverride("C0DEDAL",EscapeAreaMove("AR0403",687,360,SE))
ChangeAIScript("",DEFAULT)
LeaveParty()
ApplySpellRES("C0AUIN3",Myself)
ApplySpellRES("C0AUIN3A",Myself)
EscapeAreaMove("AR0403",720,432,N)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Intro","LOCALS",0)
Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0AJUNO JUNO-0
~I'm glad we're finally able to meet, <CHARNAME>. After everything Aura's told me about you, I would've been disappointed if I didn't have a chance to talk to you at least once.~
DO ~SetGlobal("Intro","LOCALS",1)~
= ~As you already know, I'm Aura's eldest sister, Juno. I owe you a lot for taking care of her, and teaching her everything you have during your adventures together.~
END
  ++ ~She's been an incomparable ally, and a good friend. I'm glad to have her around.~ + JUNO-0-1
  ++ ~I think I also owe you for your part in raising her. She's said many good things about you.~ + JUNO-0-2
  ++ ~Her skills are useful. That's all I care about.~ + JUNO-0-3

CHAIN C0AJUNO JUNO-0-1
~I'm glad you've managed to build such a strong bond with her. It may be a surprise to hear, seeing her as she is now, but a long time ago, she... struggled to connect with people. You've given her a lot of confidence, and it's changed her for the better.~
EXTERN C0AJUNO JUNO-0-4

CHAIN C0AJUNO JUNO-0-2
~I think you've overestimated my part in making my sister who she is now. I know she looks up to me, but in many ways, she's also far surpassed me, and it's her admiration of you that's driving her to improve herself further now.~
EXTERN C0AJUNO JUNO-0-4

CHAIN C0AJUNO JUNO-0-3
~Hmm. While I can say that, seeing how she is now, I can trust Aura's judgment of people, I do hope you recognize her value as a friend and treat her with the respect she deserves. With what she's said about you, however, I'm willing to give the benefit of the doubt.~
EXTERN C0AJUNO JUNO-0-4

CHAIN C0AJUNO JUNO-0-4
~While this family reunion will likely be shorter than I like, as long as I am here I hope that we may develop a friendship of our own. In time, I expect that even the rest of my family will want to become acquainted with you.~
= ~If there is something you wish to talk to me about, please don't hesitate to ask. And I'm certain Luna and my uncle will be eager to introduce themselves as well, if they haven't already.~
EXIT

CHAIN IF ~!Global("Intro","LOCALS",0) Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0AJUNO JUNO-1
~Yes, <CHARNAME>? Is there something I can do for you?~
END
  ++ ~I'd like to know more about your family.~ + JUNO-1-FAMILY
  ++ ~I'd like to know more about you.~ + JUNO-1-SELF
  ++ ~Nothing right now. Excuse me.~ EXIT

CHAIN C0AJUNO JUNO-1-FAMILY
~Of course. Is there anyone in particular you want to talk about?~
END
  + ~Global("C0AuraJunoFamily1","GLOBAL",0)~ + ~What can you tell me about Aura?~ DO ~SetGlobal("C0AuraJunoFamily1","GLOBAL",1)~ + JUNO-1-FAMILY-1
  + ~Global("C0AuraJunoFamily2","GLOBAL",0)~ + ~What can you tell me about Luna?~ DO ~SetGlobal("C0AuraJunoFamily2","GLOBAL",2)~ + JUNO-1-FAMILY-2
  + ~Global("C0AuraJunoFamily3","GLOBAL",0)~ + ~What can you tell me about your uncle, Dedalus?~ DO ~SetGlobal("C0AuraJunoFamily3","GLOBAL",3)~ + JUNO-1-FAMILY-3
  ++ ~I'd like to know more about you.~ + JUNO-1-SELF
  ++ ~Actually, never mind. I'll be going now.~ EXIT

CHAIN C0AJUNO JUNO-1-FAMILY2
~Is there anyone in particular you want to talk about?~
END
  + ~Global("C0AuraJunoFamily1","GLOBAL",0)~ + ~What can you tell me about Aura?~ DO ~SetGlobal("C0AuraJunoFamily1","GLOBAL",1)~ + JUNO-1-FAMILY-1
  + ~Global("C0AuraJunoFamily2","GLOBAL",0)~ + ~What can you tell me about Luna?~ DO ~SetGlobal("C0AuraJunoFamily2","GLOBAL",2)~ + JUNO-1-FAMILY-2
  + ~Global("C0AuraJunoFamily3","GLOBAL",0)~ + ~What can you tell me about your uncle, Dedalus?~ DO ~SetGlobal("C0AuraJunoFamily3","GLOBAL",3)~ + JUNO-1-FAMILY-3
  ++ ~I'd like to know more about you.~ + JUNO-1-SELF
  ++ ~Actually, never mind. I'll be going now.~ EXIT

CHAIN C0AJUNO JUNO-1-FAMILY-1
~About Aura? I think you know as much about her as there can be said, having played the role of her leader for so long.~
= ~Perhaps I should be the one asking you. What are your impressions of my little sister, given all you know about her character?~
END
  ++ ~She's pure-hearted and idealistic. And even though she has her doubts, she's brave enough to face them.~ + JUNO-1-FAMILY-1-1
  ++ ~There's still a lot she has to understand about people, and the world. But she's willing and ready to learn.~ + JUNO-1-FAMILY-1-1
  ++ ~I think she's far too naive. If I weren't around, I doubt she would last long in the world.~ + JUNO-1-FAMILY-1-2
  ++ ~I'd much rather just know what you think.~ + JUNO-1-FAMILY-1-3

CHAIN C0AJUNO JUNO-1-FAMILY-1-1
~That is how she has always been. It is something that many could do well to emulate, though it also makes me fear for her future sometimes, as she is keen to take on others' burdens as their own.~
EXTERN C0AJUNO JUNO-1-FAMILY-1-3

CHAIN C0AJUNO JUNO-1-FAMILY-1-2
~Perhaps. I cannot deny that she tries too hard, and too often, to see the best in all things. But I do not believe it to be necessarily a flaw. It merely requires an additional hand as guidance.~
EXTERN C0AJUNO JUNO-1-FAMILY-1-3

CHAIN C0AJUNO JUNO-1-FAMILY-1-3
~What you see in her is exactly the same as what I do. My sister has grown, but her innermost self has not changed. As such, I doubt my insight will add more than what you already know.~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ + JUNO-1-FAMILY-1-4
IF ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + JUNO-1-FAMILY2

CHAIN C0AJUNO JUNO-1-FAMILY-1-4
~Though, that aside, I understand that Aura is... especially fond of you, not only as a leader but also as a person. She has never said it plainly in her letters, but I know her well enough to understand what you mean to her.~
= ~Forgive me for saying this, but I still have a responsibility as a sister to ask that you take care of her. She has always given her all for those she cares about. I hope you will give no less in return.~
END
  ++ ~There's no need to doubt me. Aura is very close to my heart.~ + JUNO-1-FAMILY-1-5
  ++ ~I understand your concerns. But I assure you that I care about Aura greatly.~ + JUNO-1-FAMILY-1-5
  ++ ~You may be her sister, but I still don't appreciate your insinuations about our relationship.~ + JUNO-1-FAMILY-1-6

CHAIN C0AJUNO JUNO-1-FAMILY-1-5
~I understand. I wish for my sister's happiness above all, and I trust that you are able to give it to her.~
EXTERN C0AJUNO JUNO-1-FAMILY-1-6

CHAIN C0AJUNO JUNO-1-FAMILY-1-6
~It is not my place to involve myself in your relationship. I believe that Aura knows who to entrust her heart with, and so now that I have said my part, I won't interrogate you any further on the matter.~
EXTERN C0AJUNO JUNO-1-FAMILY2

CHAIN C0AJUNO JUNO-1-FAMILY-2
~If you are accustomed to Aura's personality, I should warn you ahead of time that Luna is... quite different. She can be abrasive, especially when in an unfamiliar position.~
= ~She has always been this way. I fear a large part of it is likely my fault—I wasn't as large of a part of her life during her childhood as I should've been. I hoped not to repeat my mistake after Aura was born, but that has only made her envious.~
= ~Please don't be too hard on her, if she says or does anything that offends you. She truly means no harm, and her time with the Seekers of Gond has helped to temper her personality, though she still has some progress to make.~
EXIT

CHAIN C0AJUNO JUNO-1-FAMILY-3
~My uncle, Dedalus Dinelstrand, is one of the esteemed High Artificers of our homeland, and a master artificer. He is the half-brother of Kairos, my father, and although he does not share our name, he is as close as any immediate member of our family.~
= ~If you intend to speak with him, be aware that he is... rather reserved. His duties as an inventor of Lantanese weaponry has instilled upon him a strong sense of discipline and caution, and this carries over to his daily life.~
= ~However, I know he has visited Candlekeep in the past, and has great respect for its many scholars and readers. You may find some common ground with him in that.~
EXTERN C0AJUNO JUNO-1-FAMILY2

CHAIN C0AJUNO JUNO-1-SELF
~I'm the eldest child of our family, and I've had a hand in raising my siblings—all five of them—throughout my life, making sure they're prepared for whatever life they choose to lead, whether it's within Lantan or elsewhere.~
= ~Nowadays, I serve as a member of the closest thing Lantan has to a proper military force. I trained Aura in archery from a young age, though it is the only practical skill I was capable of imparting upon her. I'm fairly competent with artifice, as most of my family are, but in that regard she is far above me in talent.~
EXTERN C0AJUNO JUNO-1-FAMILY2

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0ALUNA LUNA-1
~So you're <CHARNAME>? I've heard all about you. After all, you're all that Aura's been writing to us about recently.~
= ~You sure it's not my sisters that you want to talk to? I'm sure there's nothing about me that interests you. My sisters have all the talent and accomplishments nowadays.~
END
  ++ ~I'd still like to get acquainted with you, regardless.~ + LUNA-1-1
  ++ ~Sounds like you feel rather overshadowed by your sisters.~ + LUNA-1-2

CHAIN C0ALUNA LUNA-1-1
~Really? You'd actually care to know? Fine, just don't set your expectations too high. Luna Glimmershine, second eldest child of the clan, Seeker of the Gondar church. In other words, I'm just a priestess. Nothing exceptional.~
EXTERN C0ALUNA LUNA-1-3

CHAIN C0ALUNA LUNA-1-2
~Me? I wouldn't dare. I'm just one among many of the Glimmershine clan's daughters, as well as an honored priestess of the church of Gond. Plenty of expectations are set upon me, for how little of worth that I truly do.~
EXTERN C0ALUNA LUNA-1-3

CHAIN C0ALUNA LUNA-1-3
~The duties for a priestess of Gond sound grandiose when put into words, but in truth, I do very little as opposed to all the hard workers in my family. I can't protect Lantan with a weapon, and I'm certainly not brave enough to go venturing the world like my little sister, trying to learn as much as she can.~
= ~If you want to hear me preach, I certainly know how to do that, but I'm happier staying away from my scriptures while I have this opportunity. And if you're after anything else, you're out of luck, really.~
= ~Anyway, if you'll excuse me, I'll go back to enjoying this sisterly reunion. We won't be here forever, after all, and you'll have my darling sister back before long.~
EXIT

CHAIN IF ~Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0ALUNA LUNA-2
~Back again, <CHARNAME>? I'm really not that interesting.~
END
  + ~Global("C0AuraLuna1","GLOBAL",0)~ + ~I wanted to hear your thoughts about your family.~ DO ~SetGlobal("C0AuraLuna1","GLOBAL",1)~ + LUNA-2-1
  + ~Global("C0AuraLuna2","GLOBAL",0)~ + ~I'd still like to know more about you.~ DO ~SetGlobal("C0AuraLuna2","GLOBAL",1)~ + LUNA-2-2
  ++ ~I'll leave you alone, then.~ EXIT

CHAIN C0ALUNA LUNA-2-1
~About them, of course it's about them... why don't you ask them yourself? I'm sure you'll hear more of what you want without me getting in the way.~
END
  ++ ~You seem to have a rather large chip on your shoulder.~ + LUNA-2-3
  ++ ~Do they upset you that much? From what I hear, Aura thinks highly of you.~ + LUNA-2-4
  ++ ~Never mind, then. Excuse me.~ EXIT

CHAIN C0ALUNA LUNA-2-2
~There's really nothing more to tell. I don't have any exciting stories like all the ones Aura's got, and I'm not some genius with the future of our people in my sights. I'm nobody to you.~
EXIT

CHAIN C0ALUNA LUNA-2-3
~What, you think I've got a grudge? Hardly. I'm in the type of position that I deserve. After all, I'm not a brave soldier or a prodigy of our peoples' craft. I still have to do my part for the Lantanna.~
= ~If I had any ambitions of being more than what I am, I learned to live with the disappointment a long time ago. That's all.~
EXIT

CHAIN C0ALUNA LUNA-2-4
~Of course she does. I've never seen her say otherwise. That's just how she is, and naturally there's no reason for me to complain about it. Frankly, if she have bad things to say about me, I might have fewer issues.~
EXTERN C0ALUNA LUNA-2-3

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0DEDAL DEDAL-0
~It is my honor to meet you, <CHARNAME>. Dedalus Dinelstrand, High Artificer of the Eleventh of the Great Workshops of Lantan. I have heard many tales of you from Aurelia.~
= ~You have my gratitude for taking care of my niece. She is the jewel of the Glimmershine clan, but her curiosity oft has a tendency to land herself in trouble.~
END
++ ~It is no trouble. I greatly value Aura's company.~ + DEDAL-0-1
++ ~That much, I know from experience.~ + DEDAL-0-2

CHAIN C0DEDAL DEDAL-0-1
~Indeed. She is a child of many gifts, not the least of which is her capacity for befriending others.~
EXTERN C0DEDAL DEDAL-0-2

CHAIN C0DEDAL DEDAL-0-2
~You are of the great library Candlekeep, as I have heard. A respectable place, with many great minds. Though it is rarely mentioned, the people of Lantan owe much of their knowledge to the ancient records held there.~
= ~I, myself, have had the pleasure of visiting those halls many years ago, not long before the Time of Troubles left its mark.~
END
++ ~You've been to Candlekeep? Perhaps you met my foster father, Gorion?~ + DEDAL-0-3

CHAIN C0DEDAL DEDAL-0-3
~Alas, I did not, although I know him by reputation. I am, however, acquainted with Keeper Ulraunt and First Reader Tethtoril, who provided me with much-needed guidance. I greatly respect their wisdom and guidance... *ahem*. Forgive me, I should remain on subject.~
= ~As you are a former ward of Candlekeep, I feel it is your right to have this. It is a ring gifted to me by the First Reader during our... 'cultural exchange', as I may most appropriately put it. I have carried it for many years, but it is of merely sentimental value to me.~
DO ~GiveItemCreate("C0ARING3",Player1,1,0,0)~
= ~I believe you may find more use from it than I will, and I offer it as a token of gratitude for your care of my niece.~
END
++ ~Thank you. I treasure the memories of my home.~ + DEDAL-0-4
++ ~You said this was part of an exchange. What did you give to the library?~ + DEDAL-0-5

CHAIN C0DEDAL DEDAL-0-4
~Think nothing of it. Aurelia's safety and well-being is of more worth than any device. If this token is of any use to you, then it carries more value than it has had in the past thirty years.~
EXTERN C0DEDAL DEDAL-0-6

CHAIN C0DEDAL DEDAL-0-5
~A time-device invented by Aurelia's father and myself, meant to supplant the use of sundials. They are common enough in Lantan nowadays, but a relatively recent invention in those days. We believed it would be an object of value for the monks, both as an object of curiosity and a practical tool for their halls.~
EXTERN C0DEDAL DEDAL-0-6

CHAIN C0DEDAL DEDAL-0-6
~If you have anything you wish to know of myself or my nieces, we will be here awhile yet. For now, there is much I wish to ask Aurelia. Excuse me.~
EXIT

CHAIN IF ~Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0DEDAL DEDAL-1-0
~<CHARNAME>. What can I do for you?~
END
++ ~Tell me of yourself, master Dedalus.~ + DEDAL-1-1
++ ~What is your relationship with Aura's family, exactly?~ + DEDAL-1-2
++ ~I noticed the sword you're carrying. I didn't think Lantanese inventors practiced combat.~ + DEDAL-1-3
++ ~What do you personally think of Aura?~ + DEDAL-1-4
++ ~I'll talk to you some other time.~ EXIT

CHAIN C0DEDAL DEDAL-1-1
~It is difficult to find things to speak of that would make sense to a non-Lantanna, but I will do my best. I am an artificer of Lantan, with leadership over the Eleventh Workshop of the Lantanna, specializing the creation of armaments for the protection of our nation.~
= ~Lantan is not a militant land, and many do not see the worth nor the virtues of our work. It... is discouraging, but I empathize with my kin. Consequently, we are the smallest of the Great Workshops, but that is not entirely a weakness. I personally oversee the process of all inventions as Head Artificer, and have a trusting relationship with my subordinates.~
END
++ ~So all the weapons Aura uses come from your workshop?~ + DEDAL-1-1-1
++ ~Do you sell any of your weaponized inventions?~ + DEDAL-1-1-2
++ ~What is your relationship with Aura's family, exactly?~ + DEDAL-1-2
++ ~I noticed the sword you're carrying. I didn't think Lantanese inventors practiced combat.~ + DEDAL-1-3
++ ~What do you personally think of Aura?~ + DEDAL-1-4
++ ~I'll talk to you some other time.~ EXIT

CHAIN C0DEDAL DEDAL-1-1-1
~Not directly. 'Weapon' has a broad definition, and thus our artificers learn a greater variety of crafts compared to the more specialized workshops. Alchemy, metallurgy, even magic, can be used in the creation of weapons. And not all weapons began as such.~
= ~As you likely know, Aurelia is greatly averse to violence. But she has the knowledge to apply her craft for means of it, when necessary. The people of the Eleventh Workshop are not so different.~
END
++ ~Do you sell any of your weaponized inventions?~ + DEDAL-1-1-2
++ ~What is your relationship with Aura's family, exactly?~ + DEDAL-1-2
++ ~I noticed the sword you're carrying. I didn't think Lantanese inventors practiced combat.~ + DEDAL-1-3
++ ~What do you personally think of Aura?~ + DEDAL-1-4
++ ~I'll talk to you some other time.~ EXIT

CHAIN C0DEDAL DEDAL-1-1-2
~No. The Eleventh Workshop is greatly restricted, far more so than the other workshops. We are forbidden from selling our creations to other nations, and even within Lantan, our permissions to distibute weapons are strictly under the discretion of the Ayrorchs.~
= ~It... is limiting, but for the best. Lantan does not pride itself on its military strength. We maintain our safety by keeping our perceived threat to a minimum. Many nations do not trust us for the potential dangers of our work, and would be quick to view us as an enemy if provoked.~
END
++ ~So all the weapons Aura uses come from your workshop?~ + DEDAL-1-1-1
++ ~What is your relationship with Aura's family, exactly?~ + DEDAL-1-2
++ ~I noticed the sword you're carrying. I didn't think Lantanese inventors practiced combat.~ + DEDAL-1-3
++ ~What do you personally think of Aura?~ + DEDAL-1-4
++ ~I'll talk to you some other time.~ EXIT

CHAIN C0DEDAL DEDAL-1-2
~I am, as you know, Aurelia's uncle. Her father, Kairos Glimmershine, is my half-brother. Between us, he is the elder by twelve years.~
= ~Aurelia's grandmother—that is to say, Kairos's mother, Minerva—had the spirit of an adventurer. She separated with my father, Arthur Dinelstrand, a few years after Kairos's birth, and he remarried with my mother, Vera, until both... perished, in an tragic accident.~
= ~Kairos and I were raised together, and we have been close since childhood. Though I am not a Glimmershine by blood, I am... as close to the clan as is possible.~
END
++ ~I noticed the sword you're carrying. I didn't think Lantanese inventors practiced combat.~ + DEDAL-1-3
++ ~What do you personally think of Aura?~ + DEDAL-1-4
++ ~I'll talk to you some other time.~ EXIT

CHAIN C0DEDAL DEDAL-1-3
~Ah... this? A means for self-protection, nothing more. I would not call myself a dedicated swordsman. But with my various duties that involve travelling outside of the homeland, it is a necessary precaution.~
= ~I have seen my share of combat, far beyond most Lantanna, but I would not consider myself close to the skill of a seasoned adventurer.~
END
++ ~What is your relationship with Aura's family, exactly?~ + DEDAL-1-2
++ ~What do you personally think of Aura?~ + DEDAL-1-4
++ ~I'll talk to you some other time.~ EXIT

CHAIN C0DEDAL DEDAL-1-4
~Aurelia is a prodigy. For as long as I have known her, she has displayed an unquenchable curiosity for all things and a rare talent to create anything she sets her mind to. The Lantanna who know her see her as a shining example of our future.~
= ~You have, no doubt, travelled with her long enough to understand her strength of character. She is not merely capable, but she values the knowledge and creations that come from her hand. She is motivated by a desire to aid those of importance to her, whether it be nation, family or friend.~
= ~Though I have not seen her for many years, I can see that travelling at your side has bolstered her growth far quicker than I have seen in her youth. You are, undoubtedly, both a motivation and inspiration to her.~
END
++ ~Tell me of yourself, master Dedalus.~ + DEDAL-1-1
++ ~What is your relationship with Aura's family, exactly?~ + DEDAL-1-2
++ ~I noticed the sword you're carrying. I didn't think Lantanese inventors practiced combat.~ + DEDAL-1-3
++ ~I'll talk to you some other time.~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",9)~ THEN C0APICO quest3-9
~*huff* *puff*... oh... I finally found you, <PRO_SIRMAAM>! You... you need to come back to the Jansen home! There's a big problem!~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",10)~
END
  ++ ~What happened?~ EXTERN C0APICO quest3-9-1
  ++ ~Did Aura send you?~ EXTERN C0APICO quest3-9-1

CHAIN C0APICO quest3-9-1
~It's... it's miss Aura, <PRO_SIRMAAM>! She... she was taken away!~
= ~Nobody else in the family noticed until the morning, but I saw the night before after coming home... she was talking to her uncle, and they looked so grim that it was frightening!~
= ~I... I couldn't get close enough to hear what they said, but then two gnomes in yellow appeared and led her out of the city! I'm so sorry, <PRO_SIRMAAM>, but I lost them while following their path once they left the gates...~
= ~After I lost them, I went back and told miss Aura's sisters... miss Juno told me to look for you immediately and come back to meet her! She's waiting for you at the workshop!~
END
  ++ ~Alright. I'll make my way back to the house immediately.~ + quest3-9-2
  ++ ~Fine. I don't know what's going on, but I need Aura back.~ + quest3-9-2

CHAIN C0APICO quest3-9-2
~I'll head back first and tell everyone I found you, <PRO_SIRMAAM>. Please hurry, there's no time to waste!~
DO ~AddJournalEntry(%Quest3_Entry_1%,QUEST) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",12)~ THEN C0AJUNO quest3-12
~Good, you're here, <CHARNAME>. I was worried the young lad Pico might not have been able to find you. Do you understand what's happened?~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",13)~
END
  ++ ~Where did your uncle take Aura?~ EXTERN C0AJUNO quest3-12-1
  ++ ~Just make it quick. What happened?~ EXTERN C0AJUNO quest3-12-1
  ++ ~Who are these other gnomes that are searching this place?~ EXTERN C0AJUNO quest3-12-2

CHAIN C0AJUNO quest3-12-1
~This was my fault. I should have been more aware of things, but I underestimated my uncle's resourcefulness. Otherwise, I might have been able to stop him from taking Aura away.~
EXTERN C0AJUNO quest3-12-2

CHAIN C0AJUNO quest3-12-2
~I'm uncertain whether Aura has told you before, but I am a captain of Oculus, an elite group of agents who serve Lantan. Some call us the Hands of Gond, though we primarily answer to the Ayrorch over the church itself. These others here are my subordinates.~
= ~You are my sister's close companion, and so despite the fact I should not ordinarily share information with outsiders, I will tell you the truth. Our original purpose for arriving in Amn was not solely for a family reunion, but to investigate certain unauthorized Lantanese operations outside of the homeland.~
= ~I don't know how much you are aware of the situation, but Oculus has discovered during our investigations of the presence of a criminal organization, the Interitus, who have attempted to subtly cause chaos within Amn while simultaneously testing illegal experiments throughout the nation.~
= ~Fortunately, we have mostly removed these operations by the efforts of our own agents. The only remaining factor is the mastermind behind them, who has yet to be apprehended. The only thing we know of them, aside from the knowledge they are certainly in Amn, is the title that their allies know them by... the 'Overseer'.~
END
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",53)~ + ~I'm aware of Oculus and the Interitus. Reese is one of your agents, correct?~ + quest3-12-3
  ++ ~Do you believe your uncle is this mastermind?~ + quest3-12-4
  ++ ~Who did you come here to arrest?~ + quest3-12-4

CHAIN C0AJUNO quest3-12-3
~You've been made aware of Reese's identity? I presume he told you, and circumstances required that he do so. Our agents are quite exceptional at remaining discreet when needed to.~
EXTERN C0AJUNO quest3-12-4

CHAIN C0AJUNO quest3-12-4
~The known citizens of Lantan here in Amn are few, and those exceptional enough to perform dangerous experiments even fewer. Ultimately, we narrowed it down to three people of interest.~
= ~The first was former artificer Caridius Magnussen. From careful investigation, we removed him as a suspect. The second was my uncle, Dedalus Dinelstrand, who had undisclosed records of travel to Amn that we found through much effort. The third... was Aura herself.~
= ~Although this is my personal feelings rather than evidence, I didn't believe for a second that my sister would be responsible. When my uncle made known his plans to come and visit her, I used my relation to the family as an excuse to follow and keep him under watch.~
END
  ++ ~You didn't do a very good job of it.~ EXTERN C0AJUNO quest3-12-5
  ++ ~And now he's taken Aura away. What do you think he intends to do?~ EXTERN C0AJUNO quest3-12-6
  ++ ~How did your uncle throw you off his trail?~ EXTERN C0AJUNO quest3-12-6

CHAIN C0AJUNO quest3-12-5
~I know. I regret it deeply. Aura is my dear sister, someone who I helped to raise with my own hands. I can't afford to have anything happen to her.~
EXTERN C0AJUNO quest3-12-6

CHAIN C0AJUNO quest3-12-6
~My uncle is... a genius. I would go as far to say that even Aura's mind pales in comparison to his own. He is not only a brilliant inventor tutored by master Magnussen himself, but also adept in various other fields, including swordsmanship and subterfuge.~
= ~I believed my training enough to match him, but he was able to find an opportunity to throw me off and take my sister away. Though... it is the opportunity itself that concerns me.~
= ~Since the incident, Luna has disappeared as well. Not only that, but she was with me the night before, and acting unlike herself. Looking back, I believe she was intentionally attempting to distract me. Which means she is likely assisting my uncle in some way.~
= ~I have no leads on where my uncle and Aura have gone, but I will continue to search on that end. <CHARNAME>, I need you to find Luna. Learn how much she knows of what happened, but... please do not harm her. I don't believe she has any intent to harm her own family. She is... simply prone to making hasty errors. I will need to talk to her properly once this has been settled.~
= ~If you find anything, remain in touch with me, and I will do the same. Good luck, <CHARNAME>... and thank you.~
DO ~AddJournalEntry(%Quest3_Entry_2%,QUEST)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",13)~ THEN C0ALUNA quest3-13
~You're... <CHARNAME>, right? Hold on. I–I need to talk to you.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",14)~
END
  ++ ~I need to talk to you, too. Where did your uncle take Aura?~ + quest3-13-1

CHAIN C0ALUNA quest3-13-1
~I can tell you. But you need to know one thing first—I... I never meant for this to happen! I thought my uncle was going to protect her, with the suspicion from the things my people have done. I didn't think he had anything to do with it, or that he'd take my sister away!~
= ~You have to believe me. I don't want anything to happen to Aura. You've probably been told I've never been the kindest to her, and maybe she has reason to hate me, but it's the truth!~
END
  ++ ~I believe you. Just tell me where she is.~ + quest3-13-2
  ++ ~Stop wasting time. If you want to make up for a mistake, do it properly.~ + quest3-13-2

CHAIN C0ALUNA quest3-13-2
~My uncle... he's been building an underground workshop outside of Lantan using his resources as the Eleventh Workshop's leader. It's not a recent thing... I don't know the details, but I'm certain he's been working on this in secret for years, if not decades. That's where he's gone.~
= ~I'll lead you there, but it needs to be just you and me, and whoever else you can trust. Don't let Juno—~
DO ~StartCutSceneMode()
SmallWait(5)
CreateCreature("C0AJUNO",[3507.1400],SW)
SmallWait(5)
ActionOverride("C0AJUNO",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",14)~ THEN C0AJUNO quest3-14
~*sigh*~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",15)~
== C0ALUNA ~Ah!~
== C0AJUNO ~Really, sister? "Don't let me know", is that it? I'd have thought you would grow out of that.~
== C0ALUNA ~Juno... I didn't mean to...~
== C0AJUNO ~I know. There's a lot I'd like to say, but I'm not going to waste time blaming you right now. You've never been able to handle it well, so I'll save it for later. Looking for Aura's more important.~
== C0AJUNO ~I've already heard the most important details, <CHARNAME>. If my uncle has truly built workshops outside of his authority and the knowledge of the Ayrorch, he'll be facing charges far more serious than he's already under suspicion for. We'll go right away.~
== C0ALUNA ~No! You can't, Juno.~
== C0AJUNO ~Why can't I? I expect you have a good explanation, sister.~
== C0ALUNA ~The workshop... it's an offshoot of the Eleventh, and there are countless weapons of unbelievable design in there. If you or anyone from Oculus gets seen there, there's no way my uncle or his subordinates won't notice, and there'll be a battle for sure, and who knows how much destruction will be caused!~
== C0ALUNA ~I can't have that happen... let me go with <CHARNAME> alone first. We'll find my uncle, and then you can back us up once we've ensured Aura's safety. Then, hopefully... we won't have to let anyone be hurt.~
== C0AJUNO ~...You have a point. That would make things better for everyone. Alright, I'll trust you with this mission, Luna. Don't fail the family.~
== C0ALUNA ~I won't.~
== C0AJUNO ~I'll gather up as many agents as I can, then come and join you. Luna will leave a trail for me to follow. Find my sister, <CHARNAME>, and keep her safe. The Glimmershine clan is all counting on you.~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",15)~ THEN C0ALUNA quest3-15
~The workshop is hidden in the Small Teeth Pass. It's masterfully concealed, and no one will ever find it unless they know it's there. I'll meet you at the pass, <CHARNAME>.~ [C0BLANK]
DO ~AddJournalEntry(%Quest3_Entry_3%,QUEST) SetGlobal("C0AuraBG2Quest3","GLOBAL",16) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",16)~ THEN C0ALUNA quest3-16
~There you are.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",17)~
= ~The workshop is to the southwest, past the bridge. This place is dangerous... so I'll follow your lead and tell you when we're there. I'm no good in a fight, but I can heal you if necessary. Let's go.~
DO ~SetGlobal("Allies","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",18)~ THEN C0ALUNA quest3-18
~Here! This is the entrance to the secret workshop. Like I said, it's impossible to spot by the naked eye. I'll open the passage...~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",19)
ClearAllActions()
StartCutSceneMode()
MoveToPoint([624.2413])
Wait(2)
SetSequence(SEQ_CAST)
CreateVisualEffect("ICRMPARI",[624.2413])
Wait(1)
CreateVisualEffect("ICRMPARI",[510.2385])
CreateVisualEffect("ICRMPARI",[763.2385])
TriggerActivation("C011thShop",TRUE)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",19)~ THEN C0ALUNA quest3-19
~I've opened the path to the workshop. Follow me inside, and do not say a word to anyone. Just let me handle the talking.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",20) EscapeAreaObject("C011thShop")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",21)~ THEN C0AGNO05 quest3-21
~Lady Seeker Glimmershine! You're back already?~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",22)~
== C0ALUNA ~Surprised? By your tone, it's almost as if you were hoping I wouldn't come anytime soon.~
== C0AGNO05 ~No, no, perish the thought. It's just that, given the High Artificer's commands, you would be...~
== C0ALUNA ~Enough. Where is my uncle? I wish to see him.~
== C0AGNO05 ~He... he is in the armory, milady. But... who are these with you? Should I notify the High Artificer of your arrival?~
== C0ALUNA ~These are my guests, here on business with the Eleventh Workshop. And my uncle is expecting us already, so I will greet him myself, thank you. I am, after all, still his niece. I prefer to dispense with the formalities.~
== C0AGNO05 ~As you command, Lady Seeker.~
== C0ALUNA ~Well? Get back to work!~
== C0AGNO05 ~Y–y–yes! Right away, milady!~
DO ~MoveToPoint([1408.945])
SmallWait(1)
Face(E)~ EXIT

CHAIN IF WEIGHT #-1 ~!See("C0AGNO05")
Global("C0AuraBG2Quest3","GLOBAL",22)~ THEN C0ALUNA quest3-22
~Bah. Having to act appropriately to my station is such a nuisance. But at least my rank was useful for something this time.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",23)~
END
  ++ ~Aura told me you don't enjoy your duties as a priestess. You seem comfortable in it, though?~ + quest3-22-1
  ++ ~That was rather impressive. I'm half-convinced you weren't even acting.~ + quest3-22-2
  ++ ~Let's go. We need to find Aura as quickly as possible.~ + quest3-22-4

CHAIN C0ALUNA quest3-22-1
~What else should you expect? I must do my best for the Glimmershine name. Always the best, without exception...~
EXTERN C0ALUNA quest3-22-3

CHAIN C0ALUNA quest3-22-2
~Perhaps you already know, but I'm infamous in Lantan for being the spoiled princess of my family. That comes with some benefits.~
EXTERN C0ALUNA quest3-22-3

CHAIN C0ALUNA quest3-22-3
~Now hush. If anyone gets an idea that you're not who you're supposed to be, it'll be a disaster. You have no idea what the kinds of things made here are capable of.~
EXTERN C0ALUNA quest3-22-4

CHAIN C0ALUNA  quest3-22-4
~My uncle will be in the furthest part of the workshop. I'll tell you which way to go when needed.~
DO ~SetGlobal("Allies","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",24)~ THEN C0AFRITZ quest3-24
~So you did come. Lady Seeker Glimmershine, and <CHARNAME> of Candlekeep. Master Dedalus expected that you would.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",25)~
== C0ALUNA ~*sigh* Fritz... I suppose I should've expected that you were here, loyal to my uncle as you are. Still, with your elderly father the Tribunus about to enjoy his retirement, I thought just maybe you'd have gone back to Lantan.~
== C0AFRITZ ~My father understands my wishes to act for the homeland... and I am grateful to him for it, and I owe just as much to Master Dedalus for his dedication to our people. That is why I am here, milady.~
== C0ALUNA ~"Protection of our people"? I believed so, too, even despite the involvement with Interitus and their despicable plans, and your part in hiding that from me.~
== C0AFRITZ ~Interitus is no longer a threat. The efforts of Oculus and our own enforcers has ensured that, and Lantan will be better without their shadow spreading across the realms. Now, the workers of the Eleventh Workshop may devote ourselves fully to our true calling.~
== C0ALUNA ~So you say, but... I want to speak with my uncle. If he truly believes what he's doing is for the good of Lantan... I will hear it from his mouth. And I also want to see my sister.~
== C0AFRITZ ~You have my sworn promise that Dame Aurelia is alive and well. Master Dedalus would never wish harm upon his own blood, no matter the differences.~
== C0ALUNA ~Then why are you here? If he feels no shame, then he shouldn't hesitate to come forth and meet us, instead of having you standing in our way.~
== C0AFRITZ ~...I am here by my own deduction. Though Master Dedalus has not asked it of me, for the sake of our long-wrought plans I cannot allow any uncertain factors to threaten us. I will not.~
== C0ALUNA ~Get out of our way, Fritz. If my uncle hasn't given you the order, then you have no right to intervene here. I only want to hear the truth from my uncle regarding the future of our people, our plans, along with everything else that he's hidden from me so far.~
== C0AFRITZ ~Then you will have to subdue me by force, I fear. You are correct, milady, that I have no right. To stand between you and the director is partly an excuse... in truth, I see this as my opportunity. I will have a chance to test myself against none other than the hero <CHARNAME> <PRO_HIMHER>self.~
END
  ++ ~What has this got to do with me all of a sudden?~ EXTERN C0AFRITZ quest3-24-1
  ++ ~Your true intention is to fight me?~ EXTERN C0AFRITZ quest3-24-1
  ++ ~If we have to battle, then can we just get this over already?~ EXTERN C0AFRITZ quest3-24-2

CHAIN C0AFRITZ quest3-24-1
~You are recognized as a hero among many, <CHARNAME>, a legend among mortals. Knowledge of your deeds has even spread throughout Lantan, though our people rarely regard affairs in the outerland that do not involve us.~
= ~It is my dream to become worthy of considering myself a proper defender of our nation... and nothing less than the strength of a legend is acceptable for such a role. Despite my training, I could not hope to achieve nearly as much as the <PRO_MANWOMAN> who has prevented war twice... but even so, I will pit my strength against yours, and see how great the divide before us truly is.~
EXTERN C0AFRITZ quest3-24-2

CHAIN C0AFRITZ quest3-24-2
~Under normal circumstances, I likely could not hope to match you... but we of the Eleventh Workshop have achieved many great things. There is one path in which I may hope to stand a chance as an obstacle to you.~
== C0ALUNA ~That... is that Titan?! Stop, you idiot! Do you have any idea what it'll—!~
== C0AFRITZ ~*gulp*~ [GULP]
DO ~StartCutSceneMode()
Wait(2)
ApplySpellRES("c0aqef19",Myself)
Wait(1)
Enemy()
SetSequence(SEQ_ATTACK_SLASH)
ScreenShake([20.20],2)
Wait(1)
SetSequence(SEQ_ATTACK_BACKSLASH)
ScreenShake([20.20],2)
Wait(2)
ActionOverride("C0ALUNA",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",25)~ THEN C0ALUNA quest3-25
~Great Gond... how stupid and pig-headed men can be...~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",26)~
= ~This looks to be a new composition of Titan, <CHARNAME>. He might not be able to speak, but he seems to be under more control than previous users of the solution. And he'll be extremely dangerous!~
= ~I–I can't help you here... subdue him however you can, but please try... try not to kill him.~
DO ~Deactivate(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",27)~ THEN C0DEDAL quest3-27
~That's enough, Fritz.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",28)~
== C0AFRITZ ~D... director...~
== C0DEDAL ~*sigh* You have used the new formula of Titan against my wishes, Fritz, as I feared. What symptoms are you feeling right now?~
== C0AFRITZ ~I... I am well enough.~
== C0DEDAL ~I wish to know the truth. Take your time.~
== C0AFRITZ ~Then, I... burning aches on all limbs, internal pain... headache...~
== C0DEDAL ~Can you walk?~
== C0AFRITZ ~I... I believe so.~
== C0DEDAL ~Go to the healers. Do not leave until you've recovered fully.~
== C0AFRITZ ~But—~
== C0DEDAL ~I can handle things from here. Go.~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride("C0AFRITZ",EscapeAreaObject("FixedExit"))
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",28)~ THEN C0DEDAL quest3-28
~I know why you have come. Aurelia is waiting for you.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",29)~
== C0ALUNA ~Uncle...~
== C0DEDAL ~Come inside.~
DO ~ActionOverride("C0ALUNA",EscapeAreaObject("Exit1"))
EscapeAreaObject("Exit1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",31)~ THEN C0AURA2P quest3-31
~Oh... <CHARNAME>. You're here.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",32)~
END
  ++ ~Are you okay, Aura?~ EXTERN C0AURA2P quest3-31-1
  ++ ~You don't seem to be hurt. That's a relief.~ EXTERN C0AURA2P quest3-31-1
  ++ ~Why have you been doing here?~ EXTERN C0DEDAL quest3-31-2

CHAIN C0AURA2P quest3-31-1
~Yes... I–I'm fine. I know my uncle would never try to harm me, no matter what.~
EXTERN C0DEDAL quest3-31-2

CHAIN C0DEDAL quest3-31-2
~I believe I owe you an apology for unintentionally misleading you. My intention was not to endanger Aurelia, nor to concern you over the misunderstanding.~
== C0AURA2P ~I haven't been mistreated or threatened, I've just... been awed. I once thought machines such as these were only a theory... now I'm surrounded by so many of them. It's like an old legend suddenly coming true.~
== C0AURA2P ~Uncle... he told me everything. The truth about this place, about Interitus, and about our home. About all the things that have been created here. After that, I agreed to come along. But...~
== C0DEDAL ~This workshop is under my own supervision, and the Ayrorch have no knowledge of it. Because of that, its knowledge is reserved purely to whom I can trust the most. Though my eldest niece is an enforcer of Oculus, I believed Aurelia could see my perspective... as well as Luna.~
== C0ALUNA ~Forgive me, uncle.~
== C0DEDAL ~You have no need to ask for forgiveness. Just as you have trusted in my judgement, so do I in yours.~
DO ~StartCutSceneMode()
Wait(1)
FaceObject("C0DEDAL")
Wait(1)
ActionOverride("C0AURA",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",32)~ THEN C0AURA2P quest3-32
~Before I give you my answer, uncle, I just have to ask you directly... are you really the Overseer?~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",33)~
== C0DEDAL ~...~
== C0DEDAL ~Yes.~
== C0AURA2P ~*sigh* I was afraid of that... uncle, why would you?~
== C0DEDAL ~It is as I have always said to you. Everything I have done is for the sake of Lantan.~
== C0AURA2P ~I know. That has never changed, and it's something you would never lie about. That being said, however... I still don't agree with your reasoning, uncle.~
== C0DEDAL ~Continue.~
== C0AURA2P ~I didn't fully believe you at first when you said you were certain of Lantan's future, that we would be safe against future threat from the outerland... and I'll admit, seeing what I have today makes me think it's possible. But I still don't believe this is the right way.~
== C0DEDAL ~No. I expect that not only you, but every member of the homeland would hold the same viewpoint.~
== C0DEDAL ~That is natural—we Lantanna are adepts of many trades, but war has never been among them. We have a natural aversion to war and conflict, yet our lack of understanding of it has made us complacent.~
== C0AURA2P ~I don't disagree with that, uncle. Ever since I left on my journey, I've learned a lot about the world, and I know that others' intentions aren't always pure, but—~
== C0DEDAL ~Enough. You need not explain, as I understand fully.~
== C0DEDAL ~In truth, knowing that your time out of Lantan has hardened you brings me little joy, Aurelia. Our blood relation may be distant, but I remember your upbringing well, as you have been Kairos's favored child since your birth.~
== C0DEDAL ~From the age of three, you had already shown your talent in learning. By adolescence, you had awed each and every tutor with your memory and affinity at innovation.~
== C0DEDAL ~By the time you had finished your studies at the Sambaran academy, every guild in Lantan had offered you a place in their circle. You are considered a prodigy in every sense, and given the privilege befitting your ability.~
== C0AURA2P ~That's... uncle, I never—~
== C0DEDAL ~You misunderstand, Aurelia. I do not intend to criticise you. If I had my way, all inspired minds of our homeland should have the same.~
== C0DEDAL ~I only wish for you to understand that it has always been the goal of those who have nurtured you to keep you within Lantan, so that your gift could be used in turn to enrich the nation. That... was Kairos's wish, most of all.~
== C0AURA2P ~Papa... but he always supported my wishes. Even when I decided I wanted to leave Lantan, he...~
== C0DEDAL ~Indeed. When you declared, in your youth, that your aspiration was to use your knowledge to aid not only Lantan, but the world, your father chose to give you his utmost support, even giving the approval for you to travel the world.~
== C0AURA2P ~I never knew...~
== C0DEDAL ~And I agreed with him. Do you remember what I told you, the day the Eleventh Workshop finished the creation of your bow?~
== C0AURA2P ~"A weapon forged in Lantan must always be prepared to be held to protect the ideals of the Lantanna".~
== C0DEDAL ~Correct. But I never told you against whom we must be protected from. I believed, in seeing the world, that you would eventually find the answer. And have you?~
== C0AURA2P ~I... I'm not sure.~
== C0DEDAL ~I expected as much. It is a difficult question to answer. But there is one here who may teach you better than myself.~
== C0ALUNA ~...~
== C0AURA2P ~Luna?~
== C0DEDAL ~You are not the only one who has come to understand much of the world outside of Lantan, child.~
== C0DEDAL ~Since your departure, the church of Gond has appointed Luna as spokeswoman for the Ayrorch, and as you came to know those from the outerland through your travels... she has become exposed to many who came to Lantan of their own initiative.~
== C0ALUNA ~That'll do, uncle. I'll... I'll tell her myself.~
== C0ALUNA ~Since I became spokewoman, it's been expected of me to meet those from all over the realms. On the surface, it's to establish friendly relations, but in reality, it's to gauge the intentions of those who are seeking to know about us. As a priestess, I've learned how to sift through who can be trusted, and who have... other intentions.~
== C0AURA2P ~I... think I understand now. Luna, you've seen threats... those who covet what we have, our knowledge and creations...~
== C0ALUNA ~*nods*~
== C0ALUNA ~More than that, I've seen... how those who are ignorant of our ways look down upon us. If they sought our knowledge for enlightenment, or improvement, even if it's just for themselves, that I could understand... but as time went on, all I saw were more and more who simply saw what we made as tools and weapons, to use for their own greedy and self-centered purposes.~
== C0ALUNA ~It made me angry. And eventually, even though I would never support their ways... I began to understand the logic of those who hated everything outside of the homeland so much.~
== C0AURA2P ~That was when you decided to support uncle?~
== C0DEDAL ~On the contrary, I came to her. I feared the conclusions that Luna would inevitably make should no one intervene, and gradually informed her of my own goals to ease her mind. She has given me the support she can offer as a high priestess of the Gondar church since then.~
== C0AURA2P ~But... why? Uncle, why would you do all this... without the knowledge of the Ayrorch? If you care about the homeland, then shouldn't you—~
== C0DEDAL ~To answer that... perhaps I should ask a hypothetical of your leader instead. <CHARNAME>, if I may have a moment of your time.~
== C0DEDAL ~If, one day, should Candlekeep be targeted by an outside force, whether for its knowledge, or because it is seen as a threat... what would you do?~
END
  ++ ~Defend my home, of course.~ EXTERN C0DEDAL quest3-32-1
  ++ ~I couldn't care less about Candlekeep.~ EXTERN C0DEDAL quest3-32-2
  ++ ~I'd rather not get involved in this family dispute.~ EXTERN C0DEDAL quest3-32-2

CHAIN C0DEDAL quest3-32-1
~And would those who hold authority within the library ever consider the possibility of engaging in war?~
END
  ++ ~They would not, no.~ + quest3-32-3
  ++ ~Ulraunt and Tethtoril, those old codgers? Doubtful.~ + quest3-32-3

CHAIN C0DEDAL quest3-32-2
~So be it. I will make my point regardless.~
EXTERN C0DEDAL quest3-32-4

CHAIN C0DEDAL quest3-32-3
~Indeed. Candlekeep seeks only the preservation and protection of their knowledge, and with the magic and discretion, has done so with success for many years. Despite this, it still failed you in your own time of need, as I understand it.~
EXTERN C0DEDAL quest3-32-4

CHAIN C0DEDAL quest3-32-4
~Even the strongest defenses can only do so much as a precaution. Candlekeep is a resolute fortress, yet conflict has marked it regardless. And our homeland, Lantan... could not possibly even be compared to Candlekeep.~
== C0DEDAL ~I believe you have seen it clearly yourself, Aurelia. Despite all of the efforts of Oculus, secrets of the nation are inevitably stolen and spread throughout the outerland, some even by the hands of our own.~
== C0DEDAL ~Conflict ravages the realms as our people continue to work, under the hope that it will never reach our shores. We present ourselves as eccentrics and researchers, strange yet harmless to others... but that cannot possibly last.~
== C0AURA2P ~...~
== C0ALUNA ~...~
== C0DEDAL ~There is no doubt that I believe the future of our people lies in the hands of those of pure heart and mind such as yourself, Aurelia. Yet how many like yourself will continue to live on should the rest of the realms finally seek us, only for our people to discover that we have long been left behind?~
== C0AURA2P ~I...~
== C0DEDAL ~I do not expect an answer here from you, Aurelia, any more than I could expect one from the Ayrorch. It is not a question I wish to force on anyone with a love for the homeland. It is a burden, one that should be carried by as few as possible. But we cannot betray our home by avoiding the truth, any more than we can live with our ignorance in any other realm of knowledge.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0acut23")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",33)~ THEN C0AJUNO quest3-33
~Allow me to answer you, uncle, to the best of my ability.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",34)~
== C0DEDAL ~Juno.~
== C0AJUNO ~Stand down, please. We've already detained all of the workshop's builders and their guards. Don't make this harder than it needs to be.~
== C0DEDAL ~I trust you did not hurt any of them.~
== C0AJUNO ~Of course not. They are some of your oldest and most loyal workers. Many of them I recognize by name and face. Even I wouldn't have the heart for it.~
== C0DEDAL ~Thank you.~
== C0AJUNO ~I've listened to enough to get the picture, uncle. Even despite this being among the highest transgressions for a Lantanna... I can't deny all of your reasoning. As an Oculus, I know full well the danger our own knowledge holds for us.~
== C0AJUNO ~And it sounds like my sisters have learned that difficult lesson for themselves as well... though I wish a certain someone might have trusted me enough to keep me out of the dark regarding their own doubts, as well.~
== C0ALUNA ~...~
== C0AJUNO ~While my sisters may not know conflict and war well enough yet to grasp at your intentions, uncle, I think I understand well enough. You do not wish for these weapons to be used any more than any Lantanna in this room does. This is a tool for deterrence, a warning to the outside world that we are not unprepared, should the greedy or ambitious see us as easy prey.~
== C0AJUNO ~And, even should the worst come to pass, these weapons would serve as your secret countermeasure, so that as little blood is shed on our own soil as possible. Am I wrong?~
== C0DEDAL ~...It is the most logical conclusion to come to.~
== C0AJUNO ~Judging from that, it can be insinuated... this isn't your only workshop outside of Lantan, is it?~
== C0AURA2P ~What?!~
== C0DEDAL ~...~
== C0DEDAL ~No.~
== C0ALUNA ~That... even I never knew about that... uncle, how long have you...~
== C0AJUNO ~*sigh* Uncle...~
== C0AJUNO ~Ignoring how your position looks worse by the second, I have to ask... what could you hope to accomplish for our people this way?~
== C0AJUNO ~By giving us a weapon to use against conflict, you are all but inviting it to our doorstep. If there are those as ravenous for power and resources as you believe, once they know what we are truly capable of... whether out of greed, envy or paranoia, war will become an inevitably for all Lantanna, whether they like it or not.~
== C0AJUNO ~All you have done is ensure we hold an effective weapon against our future enemies for now... but even that can't last. Will we all be forced to turn our attention and research towards conflict, and continue to feed the beast you create?~
== C0DEDAL ~...~
== C0AJUNO ~You may not know, uncle, but when I first recommended Luna as spokesman to the church, I had truly hoped that her position would allow our people to find trustworthy allies willing to mutually enrich our nations.~
== C0AJUNO ~In hindsight, perhaps I was too naive, and did not consider the effect it would have on my sister... and the blame is on me that she felt the need to support your cause.~
== C0ALUNA ~No, Juno...~
== C0AJUNO ~But I believe if there is a future for the Lantanna, it cannot be seen by standing alone. Your solution would make us appear nothing more than self-serving at best, a potential enemy to the realms at worst.~
== C0ALUNA ~I, I...~
== C0ALUNA ~I... agree with Juno, uncle. I decided to support you because I truly feared for my home... but if it was only because I couldn't fully trust in others, then I've been making a terrible mistake all along. I don't want to see bloodshed become as natural for our people as it is for those I fear so much.~
== C0AURA2P ~I also agree. I can't give you an answer to how the Lantanna should prepare for our future, uncle, but it isn't this. You're perhaps the most knowledgable Lantanna I've ever known, and one of my most respected mentors... surely you can see it.~
== C0AURA2P ~<CHARNAME>... you're not a Lantanna, but as someone who's taught me much in our journey, whether knowingly or not... you see things the same way as I do, right?~
END
  ++ ~I do. Your uncle is endangering your home, not protecting it.~ EXTERN C0DEDAL quest3-33-1
  ++ ~This doesn't concern me. Leave me out of this.~ EXTERN C0DEDAL quest3-33-2
  ++ ~I actually agree with your uncle's position.~ EXTERN C0DEDAL quest3-33-2

CHAIN C0DEDAL quest3-33-1
~You, <CHARNAME>? Though the affairs of the outerland have yet to affect Lantan, I have heard much of the conflict in the Sword Coast, of which you had a part in combating.~
= ~Did you not personally see how little it took to spark the flames of warfare between opposing nations? When the need for survival was used as a pretext for conquering others simply because the victory seemed possible?~
END
  ++ ~It's true—I did see it. But I also saw how easily two nations were almost manipulated into war. All it took was for both sides to believe the other would strike first. You're giving every nation you fear a reason to act against you.~ + quest3-33-2
  ++ ~You may have a point. But if you think that the solution is to hold a blade over the necks of those who threaten you, all you're doing is proving to others that you're the threat that should be feared.~ + quest3-33-2
  ++ ~You're right. And it's because of that which I can say that you're just repeating the same mistakes of those I've seen before, in a much greater scale. Stop this madness, before you invoke the consequences that you've been trying to prevent.~ + quest3-33-2
  ++ ~That doesn't matter. Right now, you need to be stopped, and I see the reasons for it right before my eyes.~ + quest3-33-3

CHAIN C0DEDAL quest3-33-2
~Hmm.~
== C0AURA2P ~Uncle, please listen. I've seen the sorts of chaos that leads to conflict. I know what could become of our people if we just continue to do nothing. But we—all Lantanna—need to work together to find a better way. You don't have to shoulder the burden for our whole nation by yourself.~
EXTERN C0DEDAL quest3-33-3

CHAIN C0DEDAL quest3-33-3
~...Enough.~
= ~I cannot deny that you have grounds for your reasoning, as I do mine. But though we may speak in hypotheticals, the truth cannot be known until it comes to light.~
= ~Should I stop now, everything I have built will have been for nothing. And if the future is as I fear it, and we are unprepared... that is what I would truly regret.~
= ~But you are committed to your cause, and so from your perspective, as a Lantanna and enforcer of Oculus, I am now your enemy, Juno. If you wish to apprehend me by force, then do not hesitate.~
== C0ALUNA ~Please don't do this, uncle...~
== C0AJUNO ~Uncle, if you choose to resist, or worse, turn these automatons against us... there will be no avoiding Lantann blood being shed in this place. And I must also see you—bearing your sword with skill that far surpasses mine—as a physical threat, and act accordingly. Is this what you truly desire?~
== C0DEDAL ~You have thought carefully, Juno, yet your reasoning is flawed at its base. I am an inventor, not a fighter. I am not unprepared for the possibility for battle, yet I can only act as an inventor may.~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ForceSpellRES("c0aqef20",Myself)
Wait(4)
ActionOverride("C0ALUNA",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",34)~ THEN C0ALUNA quest3-34
~Wh–what in the Nine Hells is this...?!~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",35)~
== C0AGNO03 ~Arrrgh...!~
== C0AURA2P ~The... the gravity... it's been altered... everything's so heavy...~
== C0AJUNO ~That's... the Inertial Engine...? Impossible... when was it completed?! We never received a report on that!~
== C0DEDAL ~I understand that your agents are within the Eleventh Workshop's number, Juno. An understandable necessity, yet Interitus has served an equally necessary purpose. I had hoped to rehabilitate them, and give them a chance to serve the nation properly... it is regrettable that there was no stifling their ambitions.~
== C0AGNO04 ~I... I can't move...~
== C0DEDAL ~Worry not. I have no intention of harming any of you. But I cannot allow my work to end today, and so I will do as I must. You will all be released once I have made all the necessary preparations to account for this setback.~
== C0ALUNA ~Uncle... stop this...~
== C0AURA2P ~<CHARNAME>... can you... move your arm?~
END
  ++ ~Maybe... do you have a plan?~ EXTERN C0AURA2P quest3-34-1
  ++ ~Barely... if I try my hardest...~ EXTERN C0AURA2P quest3-34-1
  ++ ~I can't use my weapon, if that's what you're thinking...~ EXTERN C0AURA2P quest3-34-1

CHAIN C0AURA2P quest3-34-1
~I... I have a CL-2 grenade in my pocket... try to reach for it and open the mechanism... it might be able to disrupt the field...~
END
  ++ ~Will that work?~ EXTERN C0AURA2P quest3-34-2
  ++ ~Alright, I'll try...~ EXTERN C0AURA2P quest3-34-3

CHAIN C0AURA2P quest3-34-2
~I... I don't know... but it's worth a try...~
EXTERN C0AURA2P quest3-34-3

CHAIN C0AURA2P quest3-34-3
~Just pull the pin, and try to push it as far forward as you can... now!~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride(Player1,ReallyForceSpellRES("c0aqef21",Myself))
SmallWait(10)
CreateVisualEffectObject("C0ATHUND","Aura Golem 1")
CreateVisualEffectObject("C0ATHUND","Aura Golem 2")
CreateVisualEffectObject("C0ATHUND","Aura Golem 3")
CreateVisualEffectObject("C0ATHUND","Aura Golem 4")
CreateVisualEffectObject("C0ATHUND","Aura Golem 5")
CreateVisualEffectObject("C0ATHUND","Aura Golem 6")
Wait(3)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",35)~ THEN C0AURA2P quest3-35
~Phew... I can't believe that actually did the trick.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",36)~
== C0DEDAL ~...Curious.~
== C0DEDAL ~So the energy pattern is still vulnerable to interference... fascinating. I didn't think I could've overlooked such a fault.~
== C0DEDAL ~And with an anti-mechanism grenade? An advancement over the original model, no less... you've improved greatly, Aurelia. I remembered how much you once shied away from weapons.~
== C0AURA2P ~You taught me, uncle. The day you approved the creation of my Sunshooter at the Eleventh Workshop... you told me that to succeed, I needed to accept knowledge in all its forms.~
== C0DEDAL ~So I did. Strangely, even now, I do not regret teaching you that lesson.~
== C0DEDAL ~...It appears the automatons have turned unresponsive as well. My last means of defense has truly collapsed. *chuckle* I suppose I should be proud.~
== C0ALUNA ~Uncle...~
== C0AJUNO ~Surrender, uncle. Any further resistance would be pointless, and only make your judgement harsher. And I do not wish to be the one to bring news to Father of your complete downfall.~
== C0AURA2P ~Please... do it for all of us. We—all of us of the Glimmershine clan—have always admired and looked up to you. Don't make things any worse.~
== C0DEDAL ~...~
== C0DEDAL ~Very well. It seems I have exhausted my options. There is no use in resisting further.~
== C0ALUNA ~...ah... thank the gods...~
== C0AJUNO ~Thank you, uncle. And you for your help, <CHARNAME>. I doubt this would have went as well without your assistance. We will handle the rest.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT24")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",36)~ THEN C0ALUNA quest3-36
~W–what's going on? Uncle, what are you doing?!~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",37)~
== C0AURA2P ~That's... impossible! The CL-2 should've deactivated them! It's... it's never failed before! I... uncle, please stop this! You've already agreed to surrender!~
== C0AJUNO ~Damn it, shut them down, uncle! Now!~
== C0AURA2P ~W–wait... Juno? I–I don't think he...~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("Aura Golem 2",SetSequence(SEQ_ATTACK_SLASH))
ActionOverride("C0DEDAL",FaceObject("Aura Golem 2"))
Wait(1)
ActionOverride("Aura Golem 4",SetSequence(SEQ_ATTACK_SLASH))
ActionOverride("C0DEDAL",FaceObject("Aura Golem 4"))
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",37)~ THEN C0AURA2P quest3-37
~Uncle...? Uncle, say something!~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",38)~
== C0DEDAL ~Why... why is this...~
== C0AJUNO ~How do we stop them, uncle? Is this not your doing?!~
== C0DEDAL ~My master control... they're not responding to it...~
== C0AGOL02 ~THREATS ANALYZED. WANTED TARGET IS WITHIN RANGE.~
== C0AGOL02 ~ORIGINAL DIRECTIVE ASSIGNED BY THE OVERSEER WILL NOW BE EXECUTED. ALL PRESENT MUST BE TERMINATED.~
== C0DEDAL ~Is this... what was intended all along...? You... you foolish...~
== C0ALUNA ~This—oh, gods damn it! Aura, Juno, get back! That one's coming right at you!~
== C0DEDAL ~No—!~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT25")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",38)~ THEN C0ALUNA quest3-38
~A—aaah!~ [C0BLANK]
== C0AURA2P ~UNCLE!~
== C0AJUNO ~Argh, bollocks! Men, take position and escort everyone out of here, now! We'll regroup with our agents outside and set up a proper defense!~
DO ~TriggerActivation("Exit3",FALSE)
AmbientActivate("Animation 1",TRUE)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT26")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",38)~ THEN C0AGNO06 quest3-38-1
~N... negative, ma'am! The door's suddenly been sealed! We're trapped!~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",39)~
== C0AJUNO ~Of all the...! We'll do this the hard way then. <CHARNAME>, we need to bring down these rogue automatons! Protect my sister! Luna, stay clear of the battle! We need you to take care of the wounded once this is over!~
== C0ALUNA ~I... alright! Be careful!~
== C0AURA2P ~I'm with you, <CHARNAME>!~
END
IF ~NumInPartyLT(6)~ DO ~StartCutSceneMode()
ActionOverride("Aura Golem 2",SetSequence(SEQ_AWAKE))
ActionOverride("Aura Golem 1",Enemy())
ActionOverride("Aura Golem 3",Enemy())
ActionOverride("Aura Golem 4",Enemy())
ActionOverride("Aura Golem 5",Enemy())
ActionOverride("Aura Golem 6",Enemy())
ActionOverride("C0ALUNA",ChangeEnemyAlly(Myself,GOODBUTBLUE))
ActionOverride("C0ALUNA",ReallyForceSpellRES("c0aqef23",Player1))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",MoveToPoint([649.1243]))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",Face(N))
ActionOverride("C0AJUNO",ChangeEnemyAlly(Myself,GOODBUTBLUE))
EndCutSceneMode()
JoinParty()~ EXIT
IF ~!NumInPartyLT(6)~ DO ~StartCutSceneMode()
ActionOverride("Aura Golem 2",SetSequence(SEQ_AWAKE))
ActionOverride("Aura Golem 1",Enemy())
ActionOverride("Aura Golem 3",Enemy())
ActionOverride("Aura Golem 4",Enemy())
ActionOverride("Aura Golem 5",Enemy())
ActionOverride("Aura Golem 6",Enemy())
ActionOverride("C0ALUNA",ChangeEnemyAlly(Myself,GOODBUTBLUE))
ActionOverride("C0ALUNA",ReallyForceSpellRES("c0aqef23",Player1))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",MoveToPoint([649.1243]))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",Face(N))
ActionOverride("C0AJUNO",ChangeEnemyAlly(Myself,GOODBUTBLUE))
EndCutSceneMode()
ApplySpellRES("c0aqef24",Myself)
ChangeEnemyAlly(Myself,ALLY)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",40)~ THEN C0ALUNA quest3-40
~Ugh... it's over, finally. What wretched piles of junk...~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",41)~
END
IF ~Dead("C0Aura")~ EXTERN C0ALUNA quest3-40-dead
IF ~InParty("C0Aura")~ EXTERN C0AURA2J quest3-40-1J
IF ~!InParty("C0Aura")~ EXTERN C0AURA2P quest3-40-1P

CHAIN C0ALUNA quest3-40-dead
~Ah—NO! Aura... damn it! This is all my fault!~
DO ~SetGlobal("C0AuraBG2Quest3Resurrection","GLOBAL",1)~
== C0AJUNO ~Calm yourself, Luna. Remember your training. This is what you studied under the Gondar clerics all these years for. Can you do it?~
== C0ALUNA ~I... maybe... no, I have to do it. Be quiet and let me try.~
DO ~ClearAllActions()
StartCutSceneMode()
ForceSpell("C0Aura",CLERIC_RESURRECTION)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",41)
Global("C0AuraBG2Quest3Resurrection","GLOBAL",1)~ THEN C0ALUNA quest3-40-raise
~Oh... thank you, Lord Gond... I'm so glad...~
DO ~SetGlobal("C0AuraBG2Quest3Resurrection","GLOBAL",2)~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Ngh... what happened? I... was I just raised? Is the fighting done?~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN ~Ngh... what happened? I... was I just raised? Is the fighting done?~
== C0AJUNO ~Ha... yes, baby sister, it's done. Thank the Wonderbringer you're not, yet.~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J quest3-40-1J
IF ~!InParty("C0Aura")~ EXTERN C0AURA2P quest3-40-1P

CHAIN C0AURA2J quest3-40-1J
~What... what about uncle Dedalus? He took a hit to protect me... please tell me he's not...~
EXTERN C0AJUNO quest3-40-2

CHAIN C0AURA2P quest3-40-1P
~What... what about uncle Dedalus? He took a hit to protect me... please tell me he's not...~
EXTERN C0AJUNO quest3-40-2

CHAIN C0AJUNO quest3-40-2
~...Luna, let's go have a look.~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",42)
StartCutSceneMode()
ActionOverride("C0ALUNA",MoveToObjectOffset("C0DEDAL",[30.0]))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",FaceObject("C0DEDAL"))
MoveToObjectOffset("C0DEDAL",[30.0])
SmallWait(1)
FaceObject("C0DEDAL")
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",42)~ THEN C0AJUNO quest3-42
~He's alive. It seems we have a lot to be thankful for today. The blow was severe, but it looks like his special blade took some of the impact and saved his life, barely.~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",43)~
== C0ALUNA ~I–I'll take him away for treatment immediately. It looks like the mechanism behind the sealed door has also been deactivated.~
== C0AJUNO ~Yes, do that, sister. I'll handle the cleaning up of this place. There were active automatons outside as well—there's a good chance they also went berserk like the rest. I just hope I haven't lost too many agents dealing with those.~
== C0AJUNO ~<CHARNAME>, take a moment to catch your breath and take care of your wounds. We'll be waiting for you outside.~
END
IF ~InParty("C0Aura")~ DO ~ActionOverride("C0AGNO03",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO04",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO06",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO07",EscapeAreaObject("Exit3"))
ActionOverride("C0Dedal",DestroySelf())
ActionOverride("C0ALuna",EscapeAreaObject("Exit3"))
EscapeAreaObject("Exit3")~ EXIT
IF ~!InParty("C0Aura")~ DO ~ActionOverride("C0Aura",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO03",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO04",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO06",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO07",EscapeAreaObject("Exit3"))
ActionOverride("C0Dedal",DestroySelf())
ActionOverride("C0ALuna",EscapeAreaObject("Exit3"))
EscapeAreaObject("Exit3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",44)~ THEN C0AJUNO quest3-44
~My men have secured the workshop and taken care of any hostile automatons still remaining. It looks like we'll all have a chance to breathe again.~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",45)~
== C0AJUNO ~The worst is over. Now my biggest problem is going to be the headache that'll come from the report I'll have to write...~
== C0ALUNA ~...~
== C0AJUNO ~Don't look at me like that. I'm not going to leave you out of it just from a pitiable look, Luna. But you're a revered Seeker of the church—chances are, you'll get off the lightest out of everyone responsible for this mess.~
== C0ALUNA ~That... doesn't make me feel any better.~
== C0AJUNO ~Good. That means you might've finally grown up a little.~
== C0ALUNA ~What about... all the rest of the workers? They don't deserve to be punished any more than I do. My uncle didn't tell them about the details of this workshop. Most of them weren't aware they were doing anything wrong.~
== C0AJUNO ~*sigh* There's no chance they won't suffer at least some consequences. Even if they were only following our uncle's instruction, they still knowingly took part in building weapons without the council's approval.~
== C0AJUNO ~That cannon alone would be enough to start a war if any evidence of it found its way to Amnian authorities. I'm still wondering how I'll even get it transported back to Lantan without anyone finding out. Gods, I don't know what anybody here was thinking. This type of deterrence only works until our enemies make something even more terrifying in retribution.~
== C0ALUNA ~They only... wanted the best for our homeland.~
== C0AJUNO ~Well, they'll certainly be expected to do their best at wherever they'll be confined to for the next couple of years. Thankfully, this incident didn't cause any irreversable damage, so that may be the harshest sentence they'll get. We can only guess right now.~
END
  ++ ~You sound like you have some sympathy for these workers.~ EXTERN C0AJUNO quest3-44-1
  ++ ~They could've easily caused the very war they were hoping to prevent.~ EXTERN C0AJUNO quest3-44-2
  ++ ~So what now?~ EXTERN C0AJUNO quest3-44-4

CHAIN C0AJUNO quest3-44-1
~Can I really blame them for their intentions? It's not untrue that our nation's security is hanging on by a thinner thread than anyone else suspects. My uncle isn't the only one who has expressed similar concerns.~
EXTERN C0AJUNO quest3-44-3

CHAIN C0AJUNO quest3-44-2
~There's the irony, wouldn't you say? Not that history is lacking for these sorts of tragic mistakes. But I can't bring myself to blame anyone for this, even though the results could have been catastrophic.~
EXTERN C0AJUNO quest3-44-3

CHAIN C0AJUNO quest3-44-3
~Regardless, I have my duty as an enforcer for the Ayrorch. The Oculus must act for the peace of Lantan, regardless of how we feel personally about it.~
EXTERN C0AJUNO quest3-44-4

CHAIN C0AJUNO quest3-44-4
~I'll have to begin plans for bringing everyone back home, my uncle included. Thank you for all of your help, <CHARNAME>. We could not have avoided even worse casualties without you here, even in the best scenario.~
== C0AJUNO ~Not to mention... you came here for the sake of my baby sister. Beyond my duties as an officer, my duty to my family is more valuable than anything. I'll be forever grateful.~
END
  ++ ~You don't need to thank me. I was merely helping a close companion.~ EXTERN C0AJUNO quest3-44-5
  ++ ~I don't suppose the gratitude comes with a reward, would it?~ EXTERN C0AJUNO quest3-44-6

CHAIN C0AJUNO quest3-44-5
~My sister is blessed to find such a dependable friend. I must admit, I was not originally enthusiastic about her decision to journey away without my protection, yet... seeing what she has gained tells me it was for the best, after all. I can see she's grown much under your leadership.~
== C0AJUNO IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Perhaps it is more than friendship that she has gained, as well... I hope you'll always be at her side for when she needs you.~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) InParty("C0Aura")~ THEN  ~J–Juno... I'm right here, you know. Don't you think you're embarrassing me a little?~
== C0AURA2P IF ~Global("C0AuraRomanceActive","GLOBAL",2) !InParty("C0Aura")~ THEN  ~J–Juno... I'm right here, you know. Don't you think you're embarrassing me a little?~
== C0AJUNO IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Haha... true enough. But I expect to hear everything from your own mouth in the future.~
== C0AJUNO ~I'll tell my mother and father all of your heroism here once I return to Lantan, <CHARNAME>. You'll forever be a friend to the Glimmershine clan, and you will always be welcome at our door, should you see fit to come to our homeland.~
== C0ALUNA ~Thank you. For everything.~
END
IF ~InParty("C0AURA")~ EXTERN C0AURA2J quest3-44-7j
IF ~!InParty("C0AURA")~ EXTERN C0AURA2P quest3-44-7p

CHAIN C0AJUNO quest3-44-6
~It is not my place to offer a reward, but I cannot deny you deserve something more substantial here. I will try to arrange for something once we have finished dealing with this workshop. For now, allow me to fulfill my role as an eldest sibling.~
EXTERN C0AJUNO quest3-44-5

CHAIN C0AURA2J quest3-44-7j
~By the way... what about uncle Dedalus? What's going to happen to him once he returns home?~
EXTERN C0AJUNO quest3-44-8

CHAIN C0AURA2P quest3-44-7p
~By the way... what about uncle Dedalus? What's going to happen to him once he returns home?~
EXTERN C0AJUNO quest3-44-8

CHAIN C0AJUNO quest3-44-8
~...~
== C0ALUNA ~...~
== C0AJUNO ~There's no way to put it gently. Our uncle's actions go against the laws set by the Ayrorch. Even if his intention was not to seize power or cause chaos in an outside nation, the councilors will not look kindly upon him. And I know him well enough to know he will not try to understate the scope of his actions.~
== C0AJUNO ~His sentence will be indefinite confinement, without any doubt... if he's fortunate, and the Ayrar show sympathy to him, he'll be able to at least spend it in the comfort of his home. If not... he'll be sent to Poenitens.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~No... not there...~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~No... not there...~
== C0AJUNO ~I can't say for certain what it will be. Perhaps father may be able to say something in his defense... though considering his current status as a candidate for the council, it would be better if he does not. And Luna cannot speak for him under the Gondar church, given that she's been personally involved as well.~
== C0ALUNA ~...I'm such a fool. If I had just tried to talk him down instead of supporting him...~
== C0AJUNO ~What's done is done. We'll just have to try and make the best of things. Uncle is not the most popular among the Lantanna, given his role as Head Artificer of weapons invention, but there are still many high-ranking craftmasters who respect him. There might still be hope should a few of them speak up.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~...Has he woken up yet?~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~...Has he woken up yet?~
== C0ALUNA ~Yes, not too long ago. I've treated his injury as best I can. He can't walk for long, but the two of us have had a chance to talk with him.~
== C0AJUNO ~If you want to say a few words to him as well before we take him back to Lantan, you'll have a chance.~
== C0AJUNO ~That is, assuming the fact that you won't be returning to the homeland with us any time soon.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~I...~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~I...~
== C0AJUNO ~Did I guess correctly?~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~...Mhm.~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~...Mhm.~
== C0AJUNO ~Haha. You might have grown, Aura, but I can still read your face like a book as when you were still a little girl. Don't worry. I know you're doing what you believe you need to.~
== C0AJUNO ~If I didn't have such an important mission at hand, I'd go with you, but I can tell that <CHARNAME> will keep you safe.~
== C0ALUNA ~Right. We'll sort out the problems at home. Just don't spend another six years out here, or mother and father will really start to worry.~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~Hehe... I know. Send them my love, will you, Luna?~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~Hehe... I know. Send them my love, will you, Luna?~
== C0ALUNA ~Yes, I'm sure they'll be delighted to receive it.~
== C0AJUNO ~*ahem!*~
== C0ALUNA ~Th–that is to say... I'll be sure to, little sister. And despite what's happened... I'm happy to see you again.~
== C0AJUNO ~Now, don't be too hasty with the farewells. We'll still be here for a while—it's going to take some time to sort out all the things in this workshop, after all. If you ever need anything, or you just miss your loving sisters, don't be shy to come back and say hello.~
== C0AJUNO ~And that goes for you too, <CHARNAME>.~
END
  ++ ~I'll remember that.~ EXTERN C0AJUNO quest3-44-9
  + ~InParty("C0Aura")~ + ~Aura, don't you want to stay for a while longer?~ EXTERN C0AURA2J quest3-44-10
  ++ ~We need to go. There's still our own work to be done.~ EXTERN C0AJUNO quest3-44-9

CHAIN C0AJUNO quest3-44-9
~Oh, and before I forget... I have something for each of you. A gift for our cooperation and newly forged friendship, <CHARNAME>... and something for my sister, too, to make up for the years of birthdays and celebrations we've missed.~
DO ~GiveItemCreate("C0AAMU1",Player1,1,0,0) GiveItemCreate("C0AMISC8","C0Aura",1,0,0)~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~Thank you, Juno... take care of yourselves here, and on the way back. You too, Luna. I love you both.~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~Thank you, Juno... take care of yourselves here, and on the way back. You too, Luna. I love you both.~
== C0ALUNA ~Don't worry about us. We're the ones who should be worried.~
DO ~AddJournalEntry(%Quest3_Entry_4%,QUEST_DONE) AddExperienceParty(60000)~
== C0AJUNO ~Good luck, <CHARNAME>. Keep my little sister safe. She's a treasure to Lantan, to her people... and to us, more than anything. May Gond's blessing be with you.~
END
IF ~!InParty("C0Aura")~ DO ~ActionOverride("C0Aura",JoinParty())~ EXIT
IF ~~ EXIT

CHAIN C0AURA2J quest3-44-10
~<CHARNAME>, you should know me better by now. My sisters will be fine here, and your situation's much more dire. You should be happier to rely on me to help you when you need it, don't you think?~
== C0AJUNO ~You really have grown.~
EXTERN C0AJUNO quest3-44-9

CHAIN IF WEIGHT #-1 ~AreaCheck("C0AU05")
Global("C0AuraBG2Quest3SpawnGuards","C0AU05",1)~ THEN C0AGNO03 quest3-45-uncle
~Dame Aurelia. Are you here to speak with master Dedalus?~
DO ~SetGlobal("C0AuraBG2Quest3SpawnGuards","C0AU05",2)~
== C0AURA2J ~My uncle's in there? Is he alright?~
== C0AGNO03 ~He has woken and is quite coherent. As he has shown no intentions of struggle, we've left him alone inside, by the captain's request. But you are permitted to see him, should you desire.~
== C0AURA2J ~...~
END
  ++ ~Go ahead, Aura. I'll be with you.~ EXTERN C0AURA2J quest3-45-uncle-1
  ++ ~Do you want to speak to him alone?~ EXTERN C0AURA2J quest3-45-uncle-2

CHAIN C0AURA2J quest3-45-uncle-1
~Let's go inside.~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",1)
TriggerActivation("Exit1",TRUE)~ EXIT

CHAIN C0AURA2J quest3-45-uncle-2
~If you don't mind, <CHARNAME>... I'd rather you came with me.~
EXTERN C0AURA2J quest3-45-uncle-1

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",2)~ THEN C0DEDAL quest3-45-uncle2
~...~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",3)~
== C0AURA2J ~Uncle...~
DO ~StartCutSceneMode()
ActionOverride("C0DEDAL",Face(NE))
Wait(1)
ActionOverride("C0DEDAL",Face(SE))
Wait(1)
ActionOverride("C0DEDAL",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",3)~ THEN C0DEDAL quest3-45-uncle3
~So you've come.~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",4)~
== C0AURA2J ~I... I felt like I should see you. This might be the last time for a long while... since you'll be going home soon.~
== C0DEDAL ~Though it will not be a pleasant homecoming. By reason, it would have been better for you not to meet me, in my current situation. You are standing before one who will be remembered as one of Lantan's greatest heretics and traitors.~
== C0AURA2J ~...I can't deny that I feel hurt, uncle. You once taught me that no invention of Lantan should ever be primarily viewed as a weapon. To believe so would be to betray our identities as Lantanna... that's why, when I saw all of this, and what you were planning, I couldn't believe my eyes.~
== C0AURA2J ~I don't believe your actions were that of betrayal. I know, in your own way, your zeal in protecting our home has never changed.~
== C0AURA2J ~However... uncle, I still believe your methods are ultimately wrong. Even should you have succeeded, and ensured Lantan would never be threatened by outside ambition and greed... the cost being paid would be the Lantanna's current way of peace, which has been the foundation of our principles for as long as we have existed.~
== C0DEDAL ~Yes... perhaps you are right. Succeed or fail, I would be no less of a traitor regardless, for I have committed a far greater sin than the simple endangerment of the homeland. I have betrayed the lasting endeavors of our people, the desire to further our knowledge to move the realms forward... and I have known that since the beginning, from the day I tainted the purity of our arts with blood, in my belief that I would empower us in return.~
END
  ++ ~If you knew your actions was opposed to everything Lantan stood for, then why did you stand by them?~ EXTERN C0DEDAL quest3-45-uncle3-1
  ++ ~You may have had the best intentions, but your methods have hurt others, and the people who love and trust you, more than you know.~ EXTERN C0DEDAL quest3-45-uncle3-2
  ++ ~It's a little too late to regret your actions now.~ EXTERN C0DEDAL quest3-45-uncle3-3

CHAIN C0DEDAL quest3-45-uncle3-1
~I believed that if someone did not act, then inevitably we would lose something far, far greater. No matter what sacrifices I had to make, of myself, of our people's ways, it would have been worth it to prevent something worse. You may understand one day... even if you still may not agree with it.~
EXTERN C0DEDAL quest3-45-uncle3-3

CHAIN C0DEDAL quest3-45-uncle3-2
~Yes... that, I cannot deny. In believing I was doing what my people dared not to in order to keep us safe, I was prepared to create an insurmountable rift between myself and my family. Among all my doubts, that was the greatest.~
EXTERN C0DEDAL quest3-45-uncle3-3

CHAIN C0DEDAL quest3-45-uncle3-3
~I do not regret the sacrifices I have made to ensure our home remains a haven for our innocent and idealistic people. But I owe an apology for what my actions will mean for your family, Aurelia. It is perhaps for the best that you and I do not share the same family name, for it may lessen the scrutiny that you and Kairos may face once I am sentenced.~
== C0AURA2J ~Uncle, you... you're family too. I know father will do everything he can to make sure your judgment is not too harsh.~
== C0DEDAL ~And it will cost him his chance of a seat on the council. No, I cannot allow that. My plan has already failed. If he is given a chance to stand at a position to guide Lantan, then there will still be hope for a greater future. That is more important than my fate.~
== C0AURA2J ~But—~
== C0DEDAL ~Make no mistake, Aurelia. Regardless of where the Ayrorch sentence me to, so long as I may breathe and act, my desire to serve the nation to my utmost ability will not change. I owe that to the land, the people, to you... and to the souls of my father, mother, and Glaphyra.~
== C0AURA2J ~My aunt... would be sad to see the position you are in now.~
== C0DEDAL ~She would never have agreed to this... any of this. That, I know. But it is because of that, the gentle nature of those such as she, and those others who we have lost due to the ambitions of those impure of heart... that, which I could no longer endure.~
== C0DEDAL ~I suppose that, too, is my failing. My sense of duty, which I have long considered my greatest virtue, had become my fatal weakness. And it had made me easy to manipulate.~
END
  ++ ~Are you now implying someone manipulated you, too?~ EXTERN C0DEDAL quest3-45-uncle3-4
  ++ ~What are you talking about now?~ EXTERN C0DEDAL quest3-45-uncle3-5

CHAIN C0DEDAL quest3-45-uncle3-4
~Oh, I am not so naive as to try and absolve myself of any blame, <CHARNAME>. I was convinced of this path, and I must accept my role in it.~
EXTERN C0DEDAL quest3-45-uncle3-5

CHAIN C0DEDAL quest3-45-uncle3-5
~...~
DO ~StartCutSceneMode()
Wait(2)
Face(NW)
Wait(1)
Face(SE)
Wait(1)
MoveToPoint([1130.457])
Wait(1)
StartDialogNoSet(Player1)~ EXIT
/*
CHAIN C0DEDAL quest3-45-uncle3-6
~Regardless of any circumstance, the fault ultimately lies with me. That is the truth. I am only wondering if I ever held as much control as I believed I did. Looking back at how quickly those creations turned against me, it seems my defense was more fragile than I could have ever thought.~
== C0AURA2J ~Uncle... who is the one really behind all this? When the automatons attacked us, I was already suspecting... it was more like they were following someone else's predetermined command, rather than truly losing control. And all this time, you've spoken of them as though they are not truly yours.~
== C0DEDAL ~...~
== C0DEDAL ~You even noticed that. I have few secrets left to keep, it seems.~
== C0AURA2J ~Will you tell me, uncle? No matter what, I won't believe that you came to believe on your own that the best way to protect Lantan was through this kind of oppressive method.~
== C0AURA2J ~That isn't your nature, even despite all the years you've spent building weapons of destruction. Somebody must have convinced you.~
== C0DEDAL ~I had hoped to spare you this particular knowledge, Aurelia. If I tell you here, your perspective will be tainted by bias and subjectivity, and you will not understand the truth, even though you may hear it. There is more to this than you, or even I myself, can know of.~
EXTERN C0DEDAL quest3-45-uncle3-5
*/
CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",4)~ THEN C0DEDAL quest3-45-uncle4
~I will give this to you.~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",5)~
== C0AURA2J ~This is... your sword, uncle. The one you've carried with you all these years. I can't take this!~
DO ~GiveItemCreate("C0AUSS01","C0AURA",1,0,0)~
== C0DEDAL ~It will no longer be mine to wield regardless. My duty from hereon will be within the confines of my home, if not Poenitens. My time as our nation's blade is done... and perhaps a blade has never been what we needed.~
== C0DEDAL ~From now on, as a true artificer of Lantan, it is your place to decide what purpose this tool will serve.~
/*== C0AURA2J ~I...~
== C0DEDAL ~There is more. Remove the stone from the pommel.~
DO ~GiveItemCreate("C0AMISC9","C0AURA",1,0,0)~
== C0AURA2J ~This is... what is it, uncle?~
== C0DEDAL ~Consider it... a key, of sorts. When you return to the homeland, remember to keep it close at hand, and you will find its purpose soon enough. It will guide you to the remnants of the Fourth Workshop. There you may... understand, a little.~
== C0AURA2J ~The Fourth...? The lost workshop, which has been removed from our texts and is never spoken of... uncle, what do you know of it?~
== C0DEDAL ~It has been forgotten, and not without reason. The few Lantanna who remember it view it as a graveyard of sins... but to me, it is... you may consider it once Glaphyra's sacred garden.~
== C0AURA2J ~Aunt Glaphyra... was involved with the Fourth Workshop? Uncle, what...~
== C0DEDAL ~As I said, you may understand once you find it. It will explain more than my words alone could.~*/
== C0AURA2J ~...Thank you, uncle.~
== C0DEDAL ~For now, fulfill what duty you believe to be the most correct. If that is to support <CHARNAME>, then do not allow this knowledge to make you hesitate.~
== C0AURA2J ~I know.~
== C0DEDAL ~Very good. Go, now... I feel the need for rest. Luna has tended to my wounds, but a proper recovery will still take time. Though the Wonderbringer may condemn me, my prayers in His name will be with you on your journey.~
== C0AURA2J ~I wish the best for you too, uncle. And before we go, I just wanted to say one last thing... thank you. For protecting me in the end.~
== C0DEDAL ~Farewell, Aurelia.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0acut31")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",5)~ THEN C0AURA2J quest3-45-uncle5
~Well... that's that, I suppose. Who knows how long it'll be before I see him again.~
DO ~AddJournalEntry(%Quest3_Entry_5%,QUEST_DONE) SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",6)~
END
  ++ ~Are you okay, Aura?~ EXTERN C0AURA2J quest3-45-uncle5-1
  ++ ~He seemed to be handling things well, all in all.~ EXTERN C0AURA2J quest3-45-uncle5-2
  ++ ~So what now?~ EXTERN C0AURA2J quest3-45-uncle5-3

CHAIN C0AURA2J quest3-45-uncle5-1
~I'm alright, <CHARNAME>. To be honest, I'm relieved... I was worried the physical and mental toll on my uncle after what happened would affect him more... but he's as stable and resolute as I've always known him.~
EXTERN C0AURA2J quest3-45-uncle5-3

CHAIN C0AURA2J quest3-45-uncle5-2
~I agree. He's faring better after what happened than I assumed. Even though I can't help but regret his position... I'm still at least a little relieved.~
EXTERN C0AURA2J quest3-45-uncle5-3

CHAIN C0AURA2J quest3-45-uncle5-3
//~The last bit of knowledge my uncle gave me concerns me a little... the Fourth Workshop, the lost and forbidden knowledge of my people... if my aunt Glaphyra really has something to do with it, I need to find out the truth someday.~
~I hope the Ayrorch don't judge him too harshly... I know he cares about our nation, and all of us, as much as anyone if not more. Maybe I can try to speak on his behalf, when I return home...~
= ~For now, though, your situation is more important, <CHARNAME>. I'll worry about my own problems once I finally make my way home to Lantan. I came to have a last talk with my uncle, I'm satisfied. Let's go.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",54)
Global("C0AuraBG2Quest3","GLOBAL",45)
Global("C0AuraBG2Quest3MagnusTalk","GLOBAL",0)~ THEN C0AMAGN magnus-quest3
~I hear Dedalus has been detained by the Hands of Gond. Dear, oh dear... what a terrible shame it is.~
DO ~SetGlobal("C0AuraBG2Quest3MagnusTalk","GLOBAL",1)~
END
  ++ ~How do you know about that?~ EXTERN C0AMAGN magnus-quest3-1
  ++ ~You're familiar with Dedalus?~ EXTERN C0AMAGN magnus-quest3-2

CHAIN C0AMAGN magnus-quest3-1
~Reese told me what happened. You helped to do what was right... but still, what a sorry end to this tale.~
EXTERN C0AMAGN magnus-quest3-2

CHAIN C0AMAGN magnus-quest3-2
~Dedalus was one of my two greatest students, you know. He, and his sister Glaphyra, learned all the fundamentals of my knowledge, and I knew they could use it for great things. It just goes to show that 'great' is not always synonymous with 'good'. Tsk, tsk...~
= ~Now, with one of my students long gone, and the other no doubt headed for Poenitens... I suppose my legacy will remain only in parchment and ink. No matter... a true inventor must always consider the outcome of their work over their own name.~
END
IF ~InParty("C0Aura") InMyArea("C0Aura")~ EXTERN C0AMAGN magnus-quest3-3
IF ~OR(2)
!InParty("C0Aura") !InMyArea("C0Aura")~ EXTERN C0AMAGN magnus-quest3-4

CHAIN C0AMAGN magnus-quest3-3
~Aurelia, my dear girl... I want you to take this. This is a culmination of my many years of alchemical research... I had other intentions for it, but with my disciples gone, you may be the most suitable to inherit my knowledge. My days of properly mentoring other Lantanna are behind me, but I hope you might consider me a teacher, if only indirectly.~
== C0AURA2J ~I... thank you, master Magnussen.~
DO ~GiveItemCreate("c0abook5","C0Aura",1,0,0)~ EXTERN C0AMAGN magnus-quest3-5

CHAIN C0AMAGN magnus-quest3-4
~<CHARNAME>, my <PRO_GIRLBOY>, when you see young Aurelia again, please give her this. I may no longer be a tutor of Lantan, but I hope my works will never truly be forgotten. With my disciples gone, I will have to hand this knowledge to the most capable inheritor.~
DO ~GiveItemCreate("c0abook5",Player1,1,0,0)~ EXTERN C0AMAGN magnus-quest3-5

CHAIN C0AMAGN magnus-quest3-5
~Now, then. I must resume my research. So much left to do, and so little time remaining... *cough* I bid you good <DAYNIGHTALL>.~
EXIT

/*
INTERJECT MGAPPR02 70 C0AuraBG2AppQuest
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~Hey, <CHARNAME>? Can I just pull you aside for a moment?~
END
  ++ ~Sure. What's on your mind?~ EXTERN C0AURA2J C0AuraBG2AppQuest-1
  ++ ~Not right now, this is important.~ EXTERN MGAPPR02 71

CHAIN C0AURA2J C0AuraBG2AppQuest-1
~Okay, listen, <CHARNAME>... this is some pretty dangerous work these kids are proposing. I don't think even with how much experience I have making magical items, I could manage it without life-threatening risk.~
== C0AURA2J ~I know it's tempting, but maybe you should tell them to just quit while they're ahead, you know? It's safer for everyone if you do that.~
END
  ++ ~You're right. I shouldn't let them try something so dangerous. I'll tell them.~ EXTERN MGAPPR02 71
  ++ ~Wait, I have another idea. What if you helped them through the creation process?~ EXTERN C0AURA2J C0AuraBG2AppQuest-1
  ++ ~I want the extra power. They'll just have to take the risk.~ EXTERN C0AURA2J C0AuraBG2AppQuest-2

CHAIN C0AURA2J C0AuraBG2AppQuest-2
~This is a bad idea, <CHARNAME>... not only can making these sorts of things *kill* people, there's no guarantee they even can finish the item. Please, think this through.~
EXTERN MGAPPR02 71

CHAIN C0AURA2J C0AuraBG2AppQuest-1
~I don't know... even if I helped them, I can't promise they'll finish the work unscathed... and I can't make it for them, either. Although...~
= ~I... guess I could teach them how to make something else. Something a lot safer, from my own design concepts. It probably wouldn't be as powerful as what's in their books, but if it's unique enough, it could~
END
  ++ ~What kind of item would you be able to teach them to make?~ EXTERN C0AURA2J C0AuraBG2AppQuest-3
  ++ ~That won't be necessary. I won't ask them to make anything.~ EXTERN MGAPPR02 71
  ++ ~If it's not going to be as powerful, I'd rather the apprentices just take the risk.~ EXTERN C0AURA2J C0AuraBG2AppQuest-2

CHAIN C0AURA2J C0AuraBG2AppQuest-3
~Hmm... I'll have to think... I can't say anything for certain right now. I'd need to observe their skills, see what's within reason... and then I'll have to think on what materials would be practical...~
= ~Well, I can promise you it'd be something useful for an arcanist, at least. And if I get some kind of inspiration, it'll definitely do something you wouldn't expect.~
= ~I'd have to stay with these kids for a while, though. At least five days, maybe even a week. I can't let them out of my sight for even a moment if we're going to be working with magical items. You'd have to make do without me for that time.~
END
  ++ ~I can live with that. Shall we propose our idea to them now?~ EXTERN MGAPPR02 C0AuraBG2AppQuest-4
  ++ ~Maybe it'd be easier to just tell them not to make anything.~ EXTERN MGAPPR02 71
  ++ ~This all seems too complicated. I'll just tell them to stick to their original plans.~ EXTERN C0AURA2J C0AuraBG2AppQuest-2

CHAIN MGAPPR02 C0AuraBG2AppQuest-4
~Master <CHARNAME>, might we have your opinion now? You look like you have an idea on your mind.~
END
  ++ ~I do, in fact. I'd like to introduce you to Aura. She'll be guiding through your next project.~ EXTERN MGAPPR01 C0AuraBG2AppQuest-5
  ++ ~Listen, you all. I'm going to leave the last part of your lesson to Aura.~

CHAIN MGAPPR01 C0AuraBG2AppQuest-5
~Her? I don't know... seems a little undersized to me.~
==
*/
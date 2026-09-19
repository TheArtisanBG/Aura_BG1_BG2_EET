// Aerie

CHAIN
IF ~InParty("Aerie")
Range("Aerie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieToB1","GLOBAL",0)~ THEN BAERIE25 C0AuraAerieToB1
~Aura, do you have anything on your mind? I'm here to listen, if you need somebody to.~ [C0BLANK]
DO ~SetGlobal("C0AuraAerieToB1","GLOBAL",1)~
== BC0AUR25 ~I'm always happy to spend time with you, Aerie, but... why does this sound like you're trying to coax me into letting off some steam?~
== BAERIE25 ~No! Well... maybe. Our conflicts have only be growing more daunting and purposeful... and yet, you don't seem frightened at all. I was just worried you might've been keeping it all bottled up.~
== BC0AUR25 ~Really, I haven't... though I guess at some point, I might have been. But I have to be strong enough to not let everyone down. Don't you feel the same way?~
== BAERIE25 ~I do, yes. Having gained so much power, it made me aware of how comfortable it was to be weak... now, I need to consider my responsibilities. How to help everyone... and not lose myself while doing so.~
== BC0AUR25 ~Just don't let those burdens get too heavy, alright? Friends need to share the load. Now that I think about it, maybe it's *you* who needs a sympathetic ear?~
== BAERIE25 ~Haha! So now we really are thinking along the same lines. I'm fine, really. It's a pleasure just having a friend like you to keep me company.~
EXIT

// Anomen

CHAIN
IF ~InParty("Anomen")
Range("Anomen",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAnomenToB1","GLOBAL",0)~ THEN BANOME25 C0AuraAnomenToB1
~Please do not take this the wrong way, Aura, but there is something I have been meaning to address to you, and perhaps now is as good a time than any.~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomenToB1","GLOBAL",1)~
== BC0AUR25 ~I don't look that easily offended, do I? Hehe, I'm just teasing. Go ahead.~
== BANOME25 ~All this... indirect manner of facing our foes. Hidden traps, devious creations, lifeless machines... have you never considered such methods... dishonorable?~
== BC0AUR25 ~That's... do you think I'm dishonorable, Anomen? I just want to do my best to help, and... this is the best I can do.~
== BANOME25 ~I would never doubt that. Your purehearted intent and determination to see us succeed cannot be argued. But... I understand little of such skills, and thus I cannot help but question them. Especially when I have seen the devastation they are capable of.~
== BC0AUR25 ~You know I wouldn't use any of my most dangerous skills if they weren't necessary, Anomen. I hate hurting others as much as... well, as anyone should. But I also never thought our battles would become so beyond the realm of reason, you know?~
== BANOME25 ~Hah! Perhaps that is also true. There is much that is above my understanding nowadays, even beyond your miraculous talents... I beg your pardon. Perhaps I should seek to be more studious, like yourself. With understanding might come trust.~
== BC0AUR25 ~I can help, if you like! I can teach you all about alchemy, magical theory, you name it!~
== BANOME25 ~Er... that may be too large of a step. One must learn to crawl before they can walk. Besides... I do not enjoy the image of being caught in an explosion of my own making.~
EXIT

// Cernd

CHAIN
IF ~InParty("Cernd")
Range("Cernd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraCerndToB1","GLOBAL",0)~ THEN BCERND25 C0AuraCerndToB1
~I admire your growth, Aura. For all that you doubted your affinity for conflict, you've adapted to it well nonetheless.~ [C0BLANK]
DO ~SetGlobal("C0AuraCerndToB1","GLOBAL",1)~
== BC0AUR25 ~Really? Well, thinking about it, maybe you're right. The things that frightened me before could barely even make me blink now.~
== BCERND ~Indeed. Many of nature's most tenacious flora only grow taller under duress. Perhaps you are the same... figuratively, at least.~
== BC0AUR25 ~Ouch. Did you really have to rub my height in, Cernd?~
== BCERND ~My apologies. But I stand by the principle of my words.~
== BC0AUR25 ~If I weren't taught not to say it, I'd claim I've seen it all at this point. "Demons, dragons, demigods? Sure, why not. We'll get through it."~
== BCERND ~That does seem to have become the standard nowadays. I suppose I could say this has been a learning experience for all of us.~
== BCERND ~Though...~
== BC0AUR25 ~Hmm?~
== BCERND ~ROAR.~
== BC0AUR25 ~Eep! D–don't do that.~
== BCERND ~Ha ha! I suppose some instincts cannot be abandoned. Beneath the surface, your nature has not changed, Aura. But I see no fault in that.~
EXIT

// Dorn

CHAIN
IF ~InParty("Dorn")
Range("Dorn",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraDornToB1","GLOBAL",0)~ THEN BDORN25 C0AuraDornToB1
~There is power within you, girl, regardless of the pathetic efforts you make in feigning the opposite.~ [C0BLANK]
DO ~SetGlobal("C0AuraDornToB1","GLOBAL",1)~
== BC0AUR25 ~I'm not feigning anything, Dorn. You might be right that I have power, but I take more pride in that I know the right way to use it.~
== BDORN25 ~So I have seen. You are at odds with yourself... though your mind is a deadly weapon, your weak heart holds it back.~
== BC0AUR25 ~I trust my heart more than my mind. I'm more proud of the good things that come from my knowledge than having it for its own sake. Being a good person is more important than being all-knowing.~
== BDORN25 ~Foolishness.~
== BC0AUR25 ~You might never understand, Dorn. I'd like to think it's never too late to change, but with you, I don't even know.~
EXIT

// Edwin

CHAIN
IF ~InParty("Edwin")
Range("Edwin",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwinToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraEdwinToB1
~Can I ask a favor of you, Edwin?~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwinToB1","GLOBAL",1)~
== BEDWIN25 ~My favors come with a steep price, girl, as you should well know. Be quick, and I may consider it, as long as it does not involve parting ways with any of my collection of artifacts.~
== BC0AUR25 ~It'll be quick and easy. You don't have to give me anything, Edwin, but could you write something in my journal? Even something short is fine, as long as it's genuine.~
== BEDWIN25 ~What?! You'll squirrel no more magical secrets from me, not after all the ones you already have. (Too dangerous to give so much so quickly! She cannot be truly as guileless as she appears...)~
== BC0AUR25 ~Edwin, I just want some words to remember you by! After everything we've been through, I'll miss everyone once we part ways, even you. Won't you miss me?~
== BEDWIN25 ~I—I... bah. I suppose I could be so magnanimous as to grant you a few words of favor from my esteemed self. Fine! Hand me your pen and book so that I might do this quickly, before anyone notices my gesture.~
== BC0AUR25 ~You don't have to get too complicated, Edwin. Even a simple "good luck" will do, you know? Sometimes it really is just that simple.~
== BEDWIN25 ~No. That will not do. My words much be of as much purpose and worth as might be expected of my greatness. I will come to you once I have thought of the appropriate parting words, gnome. Be grateful that I am willing to distract myself on such trivial matters.~
== BC0AUR25 ~Thank you, Edwin!~
== BEDWIN25 ~(Truly as without guile or ambition as she seems... but, perhaps that is not so disagreeable sometimes.)~
EXIT

// Haer'Dalis

CHAIN
IF ~InParty("Haerdalis")
Range("Haerdalis",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerdalisToB1","GLOBAL",0)~ THEN BHAERD25 C0AuraHaerdalisToB1
~Another record, lovely rosefinch? I recognize that glint in your eyes—you have made headway towards another groundbreaking invention or discovery, no doubt.~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerdalisToB1","GLOBAL",1)~
== BC0AUR25 ~Oh, haha... am I getting that predictable?~
== BHAERD25 ~It is inspiring, yet tragic. Given time, even your incredible knowledge and creations will become a memory, destined to fade.~
== BC0AUR25 ~Maybe mine will, but there'll always be someone ready to take over my findings. I'm just a pioneer. The truly incredible discoveries are going to be far beyond my time.~
== BHAERD25 ~Ah, rosefinch. Perhaps your profession is not so different from mine. To set the standards to which future aspiring artists follow is the dream of every dramatist. Perhaps fate robbed the multiverse of a master playwright, and shaped her in the form of a sweet little gnome.~
== BC0AUR25 ~Haha! In another life, I wouldn't have minded being one, Haer'Dalis. But you know, I still have a long life ahead of me. There's always time to try something new before we face entropy.~
EXIT

// Hexxat

CHAIN
IF ~InParty("Hexxat")
Range("Hexxat",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHexxatToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraHexxatToB1
~Don't you ever grow tired, Hexxat?~ [C0BLANK]
DO ~SetGlobal("C0AuraHexxatToB1","GLOBAL",1)~
== BHEXXA25 ~Never.~
== BC0AUR25 ~I don't mean your body. But how long can living like this... never changing, every feeling having become stagnant, be worth it?~
== BHEXXA25 ~And should I simply stake myself? I imagine many be pleased to see that, including you.~
== BC0AUR25 ~No, I—~
== BHEXXA25 ~Perhaps that is going too far. I know you mean well—you're incapable of doing any less. But I'd expect you to know better than to talk about what you can't understand.~
== BC0AUR25 ~But—fair enough. I definitely can't. I'd choose death over what's happened to you. I'm sorry, Hexxat.~
== BHEXXA25 ~You've got nothing to be sorry about. Just don't bring it up again.~
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraImoenToB1
~Are you alright, Imoen?~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",1)~
== BIMOEN25 ~Why? Did I look down in the dumps for a moment? Sorry, I was just thinking.~
== BC0AUR25 ~That's just it. You're not usually lost in thought like this, not for as long as I've known you. It's hard not to be worried.~
== BIMOEN25 ~I'm fine. If you want to worry about someone, not that I don't like seeing your cute face watching me all concerned, <CHARNAME> has it worse than I do.~
== BIMOEN25 IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Besides, I'm sure she really needs you right now more than ever. You can help me by taking care of her however you can.~
== BC0AUR25 IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~I care about <CHARNAME>, but I know she'd be happier if you're alright too.~
== BC0AUR25 ~Maybe I'm being too pushy... but I can't forget that you're part of this whole mess. Everyone out to get <CHARNAME> is after you too. Anyone would be anxious, if not terrified. I'd hardly even be able to sleep if it were me.~
== BIMOEN25 ~I...~
== BIMOEN25 ~I'm not going to lie, it's not easy. I've changed more recently than I can keep up with, and not all of it is willingly. But I'm different now. I'm playing a part in things instead of just being a victim, and what calms me the most is being able to make a difference.~
== BC0AUR25 ~You sure? Because if I feel like you're pushing yourself, I'm going to... to...~
== BIMOEN25 ~Aw, come on. We both know you're too nice to try and be forceful.~
== BC0AUR25 ~*sigh* Yes, I am. But I can still sedate you during the evenings where you're spending too much time peering over your spellbook, you know? For your own good.~
== BIMOEN25 ~You—! You know, Aura, if you weren't such a blinding ray of sunshine, you'd seriously be one of the scariest people I've ever met.~
== BIMOEN25 IF ~!Global("ImoenRomanceActive","GLOBAL",2) !Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Instead, though? You're just plain endearing.~
== BC0AUR25 IF ~!Global("ImoenRomanceActive","GLOBAL",2) !Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Oh, come on... saying stuff like that isn't going to stop me from doing what I have to, you know... probably.~
EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!Global("ImoenRomanceActive","GLOBAL",2)
!Global("FWImoenRomanceActive","GLOBAL",1)
!Global("FWImoenRomanceActive","GLOBAL",2)
OR(2)
!Global("C0AuraMatch","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",3)
Global("C0AuraImoenToB1","GLOBAL",1)~ THEN BC0AUR25 C0AuraImoenToB2
~Hey, um... Imoen...~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",2)~
== BIMOEN25 ~What's up?~
== BC0AUR25 ~We're coming awfully close to the end, aren't we? It'll all be over soon.~
== BIMOEN25 ~That sounds a little grim, doesn't it? I prefer to think we're taking the fight to whoever's on top, showing them what we're made of, then making it back in time for tea.~
== BC0AUR25 ~Alright, that does sound better. Anyway... um...~
== BIMOEN25 ~"Anyway"... and?~
== BC0AUR25 ~If there's a happy ending to this, and we're there to see it... it'll be time for the next adventure, right?~
== BIMOEN25 ~Sure. It'll be fun. Not as worldbreaking as this one, but we'll keep looking until we find one that'll be fit for a good song. Maybe a nice beachside vacation in the middle. I'm open for ideas.~
== BC0AUR25 ~Huh? You mean... we're going to stay together?~
== BIMOEN25 ~Of course we are, silly. What, do you think we're just going to hug and say goodbye after we're done? Come on. Wouldn't you miss me?~
== BC0AUR25 ~I—yes, I absolutely would! But still... you just... believed I'd want to stay?~
== BIMOEN25 ~Isn't that what you were going to suggest just now?~
== BC0AUR25 ~...~
== BC0AUR25 ~This is not at all how I expected this talk to end up.~
== BIMOEN25 ~You're smiling... and covering up. That's just adorable. I was hoping I'd be able to get a reaction like that.~
== BC0AUR25 ~Ugh... I almost regret asking you anything... but I can't... I'm just going to find a hole to hide in forever instead.~
EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenToB1","GLOBAL",2)~ THEN BIMOEN25 C0AuraImoenToB3
~So... where're you thinking, hmm?~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",3)~
== BC0AUR25 ~Wh—where am I thinking about what?~
== BIMOEN25 ~About where we're going after this, duh. Don't tell me you've actually been trying to forget we talked about this?~
== BC0AUR25 ~N—no... I don't think I could, with how you've been teasing me about it.~
== BIMOEN25 ~I was thinking of going north. Maybe we could dig up some ancient relics in the Anauroch. Ooh, or we can go and see the snow in the Frozenfar! That'd be neat.~
== BC0AUR25 ~Huh... maybe I could even find some history of my grandmother's travels... *ahem*! Now you've got me daydreaming too.~
== BIMOEN25 ~Oh, come on. You know you like to think about it. Just the two of us, taking a nice, long vacation across Faerûn... beyond that, even.~
== BC0AUR25 ~Don't you think we should be thinking about how to make sure *this* adventure isn't our last?~
== BIMOEN25 ~Bo–ring. You know we'll be fine.~
== BC0AUR25 ~Actually, I don't know. I'm happy just to be with you, Imoen, but ever since we started talking about this, I've only gotten more worried that we'll never get a chance to see it... don't forget, you're involved too. You're as much a Bhaalspawn as <CHARNAME> is.~
== BIMOEN25 ~That... doesn't scare you, does it?~
== BC0AUR25 ~No! I'm sorry, Imoen, that's not what I—~
== BIMOEN25 ~I get it, really, I do. But I'm not just going to up and disappear on you, I promise. I'll fight as hard as I can to make sure I can have a future. And you being around gives me more reason to.~
== BC0AUR25 ~Imoen...~
== BIMOEN25 ~Though now that you've reminded me, maybe now's the best time to set some things straight... hey, come here a moment, will you?~
== BC0AUR25 ~Okay... what's—~
== BIMOEN25 ~...Mwah.~
== BC0AUR25 ~H–hey... we're still—~
== BIMOEN25 ~Who knows what'll happen if I saved this for later? Besides, I get to capture the perfect expression from it. Haha!~
== BC0AUR25 ~Hmph... I guess this is my life now, right?~
== BIMOEN25 ~You betcha.~
== BC0AUR25 ~Fine. I pretty much asked for it, didn't I...~
== BIMOEN25 ~Absolutely. Heh...~
== BC0AUR25 ~...Heehee.~
DO ~SetGlobal("C0AuraImoenToBFlirt","GLOBAL",1)~ EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenToB1","GLOBAL",4)~ THEN BC0AUR25 C0AuraImoenToB4
~Well, here we go.~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",5)~
== BIMOEN25 ~Yep. All or nothing, atop the throne of my dear, dreadful, dead dad. I'm sure it'll be great.~
== BC0AUR25 ~Yeah...~
== BIMOEN25 ~Hey, remember, just stay back and cover me. You don't need to be scared as long as I've got any spells left in my head.~
== BC0AUR25 ~Who said I was scared? I'm more worried about having to look over to make sure you're okay, you know that? Don't do anything stupid and make me worry about you when we're fighting for all of our lives!~
== BIMOEN25 ~Love you too.~
EXIT

// Jaheira

CHAIN
IF ~InParty("Jaheira")
Range("Jaheira",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheiraToB1","GLOBAL",0)~ THEN BJAHEI25 C0AuraJaheiraToB1
~May I have a moment, Aura?~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheiraToB1","GLOBAL",1)~
== BC0AUR25 ~Sure, Jaheira. Don't be a stranger.~
== BJAHEI25 ~I have debated to myself as to whether I should say this. But for your own sake, and that of our friendship, I feel there is one thing I must warn you of.~
== BC0AUR25 ~Okay... that's a grim way to start a conversation, but I guess you've never been one to mince your words.~
== BJAHEI25 ~We have faced enemies in this journey that were perhaps never meant for mortals. And in becoming victorious, we have become powerful, and with power comes the attention of other forces.~
== BJAHEI25 ~All eyes are focused on <CHARNAME>, as of now, but in the future, each of us may be viewed as a potential danger. For you, I fear this more than anyone.~
== BC0AUR25 ~*I'm* going to be seen as a potentially dangerous person? You're not... pulling my leg, are you, Jaheira?~
== BJAHEI25 ~I would never jest regarding something of this magnitude. In terms of those with the potential to affect the realms... you may not be far below <CHARNAME> <PRO_HIMHER>self.~
== BJAHEI25 ~To many, you may be considered a prime threat. For those of evil intent, certainly... but even the Harpers may see fit to keep you under observation, once your full potential is realized.~
== BC0AUR25 ~But... if that's the case, why would you tell me?~
== BJAHEI25 ~As I said, we are friends. I place that responsibility above all else. If nothing else, I can promise that I will do what I can to ensure you are viewed as a force of good. Those who know you would argue no less.~
EXIT

// Jan

CHAIN
IF ~InParty("Jan")
Range("Jan",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJanToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraJanToB1
~*sniff* Oh, I think I could recognize that scent of blended turnips from anywhere. What are you putting together this time, Jan?~ [C0BLANK]
DO ~SetGlobal("C0AuraJanToB1","GLOBAL",1)~
== BJAN25 ~You caught me, did you? Heh, and perfect timing as well, Aura. Actually, I was just about to add the finishing touches to this before coming to you.~
== BC0AUR25 ~This is meant for me? I, um, want to ask what it is, but I should thank you first, Jan.~
== BJAN25 ~No need for that. With our history of spelunking and your keeping my family company, we may as well be kin by blood these days. I've noticed that your skin hasn't had its usual luster for some time, you know. The stress and poor climate are the horrible offenders, I'm sure.~
== BC0AUR25 ~I'm just... really tired, Jan. It's not that surprising. I'll have time to take care of ourselves when we're not fighting for our lives.~
== BJAN25 ~No, no, we can't have that. I can't simply stand by while a girl like you suffers under the conditions of war and horrible environments. Well, I don't claim to be the expect in healthcare that my lovely cousin Baena, who's sold to dukes and counts all over the land, but I know a few things that might work for a fellow gnome, at least. Give it a light rub the next time you're washing your face, and I'm sure it'll solve the problem within the week. If not, you can come back and claim my head if you want.~
== BC0AUR25 ~That's a nice thought, but I don't know... the last time I saw someone else try something like this, their skin broke out in hives... this wouldn't be another funny prank, would it?~
== BJAN25 ~Now, you'll really make me sad with words like that, Aura. I wasn't joking when I said you were as good as family. Is it so wrong to try and return some shine to a young gnome lass's lovely smile?~
== BC0AUR25 ~Jan, I had no idea... thank you. I'll give it a try for sure. I can't possibly say no after hearing something like that.~
EXIT

// Keldorn

CHAIN
IF ~InParty("Keldorn")
Range("Keldorn",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKeldornToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraKeldornToB1
~Keldorn, are you quite all right? Nothing hurts or feels off?~ [C0BLANK]
DO ~SetGlobal("C0AuraKeldornToB1","GLOBAL",1)~
== BKELDO25 ~No worse than I have ever been, Aura. Have you seen something in my condition to suggest the contrary?~
== BC0AUR25 ~It's not that. I was just thinking, this has been a long journey, and with how long you've been fighting, your body... ugh, there's no way for this to sound good.~
== BKELDO25 ~Ha! I was wondering when the debate of my age would rise. That is what concerns you, is it?~
== BC0AUR25 ~Yes, sir.~
== BKELDO25 ~Between my years of training, the kindness of the gods and, of course, your regular examinations and carefully-prepared meals, I feel as hearty as I have ever been, my dear. Torm willing, I may even live to see one more decade than I deserve.~
== BC0AUR25 ~That's... that's good. I trust in your strength, of course, but since growing up in Lantan, I've seen how quickly humans can change... and it always feels like they're gone before I know it.~
== BKELDO25 ~It is always difficult to distinguish with the long-lived ones, but as I recall, you are but over fifty summers, are you not? If that is so, then I am still your elder, if only by a few years.~
== BC0AUR25 ~Hehe. It's hard to accept that we've almost lived as long as each other, sir... somehow, it feels like my experiences of the world are so meager compared to yours. I couldn't dare to call myself your equal.~
== BKELDO25 ~But you are, and I view you as such. We have both come so far on this journey together. It would be unjust to consider you any less.~
EXIT

// Korgan

CHAIN
IF ~InParty("Korgan")
Range("Korgan",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKorganToB1","GLOBAL",0)~ THEN BKORGA25 C0AuraKorganToB1
~Ye be stronger, lass. Even I be feelin' less the need to protect ye in our battles. But ye need to cull yer contempt fer bloodshed, if ye wishes to survive.~ [C0BLANK]
DO ~SetGlobal("C0AuraKorganToB1","GLOBAL",1)~
== BC0AUR25 ~I... I can't do that, Korgan. I appreciate what you do for me, but I can't fight like you do. It'll be a betrayal of everything I stand for.~
== BKORGA25 ~Better a stain on yer morals than losin' yer clever head to a wretch's blade, no?~
== BC0AUR25 ~I don't want to die, but...~
== BKORGA25 ~This be a cruel world. Yer kind nature be unsuited fer it, an' I cannae be around to make up for yer shortcomin' forever. Best ye learn the hard ways, afore it be too late.~
== BC0AUR25 ~Korgan, if I might ask... if you disapprove of my ways so greatly... why do you care what happens to me?~
== BKORGA25 ~Hnh. Perhaps I be growin' old an' sentimental. I've ne'er had a care fer cuttin' down any fool, but... still, it'd be a shame to see ye die.~
EXIT

// Mazzy

CHAIN
IF ~InParty("Mazzy")
Range("Mazzy",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMazzyToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraMazzyToB1
~*sigh*~ [C0BLANK]
DO ~SetGlobal("C0AuraMazzyToB1","GLOBAL",1)~
== BMAZZY25 ~What is it, Aura? Is your arm still aching?~
== BC0AUR25 ~No... well, yes. It is, but that wasn't what I was thinking about.~
== BMAZZY25 ~Perhaps I pushed you a little too hard during our training sessions. If there is anything on your mind, I am happy to listen as always.~
== BC0AUR25 ~I just... well, I'm thankful that I have you to help me toughen up, Mazzy. First it was the bow, now the sword. I just... can't imagine myself catching up, with the kinds of threats that we face nowadays.~
== BMAZZY25 ~There are more ways to assist the group than force of arms, Aura. You should know that more than anyone. Everyone benefits from your support greatly, and I personally would not exchange you for any other.~
== BC0AUR25 ~Heh... you know I just want to keep everyone safe. One day, I hope fighting won't be an expectation anymore... but I'll always have to be ready for it.~
== BC0AUR25 IF ~PartyHasItem("c0auss01")~ THEN ~Ever since I started carrying my uncle's sword, I think I've started to understand why, despite never choosing to fight, he's always kept it by his side. I don't want to use it... but there will be times when I must. I can't avoid that.~
== BMAZZY25 ~Indeed, even the most peaceful among us will have to face battle for the sake of what we value. Conflict is a bitter affair, but if it grants peace to those who hold dear, then it is just.~
== BC0AUR25 ~Hehe... you really do remind me of Juno. She's the type to step up and do the difficult things so that I... all of us, her younger siblings, wouldn't have to. No matter how much it wears on her, she'll never give up on her duty.~
== BMAZZY25 ~I am a servant of Arvoreen, and if fate smiles upon me, then perhaps eventually a knight as well. I will continue the fight against evil... but even I cannot deny I yearn for a life of peace one day, surrounded by my loved ones.~
== BC0AUR25 ~You'll have it, Mazzy. I will, too. We'll set all the things right that we can, and then we'll be able to finally rest.~
EXIT

// Minsc

CHAIN
IF ~InParty("Minsc")
Range("Minsc",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinscToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraMinscToB1
~Minsc, look! It's an origami sculpture of Boo!~ [C0BLANK]
DO ~SetGlobal("C0AuraMinscToB1","GLOBAL",1)~
== BMINSC25 ~What now? Ori... ga... is that a sort of food Minsc has not heard of?~
== BC0AUR25 ~No, it's a paper folding! They practice it in the East to create all sorts of art. This one's for you!~
== BMINSC25 ~Heh heh, this little doll of paper does resemble Boo in all his might. Even its size is a perfect match. Minsc approves!~
== BC0AUR25 ~I'm glad you like it. Let me know if Boo does, too!~
== BMINSC25 ~Eh, but... Aura, you know... Boo is fond of paper, but not in the gentle way. He likes to tear it up into a nest. Or for wearing out his teeth. Sometimes... he leaves his—~
== BC0AUR25 ~Eep, too much information, Minsc! I should've thought about that. I'll take it back for now, until I can figure out a hamster-proof protective enchantment first!~
EXIT

CHAIN
IF ~InParty("Minsc")
Range("Minsc",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinscToB2","GLOBAL",0)~ THEN BMINSC25 C0AuraMinscToB2
~Aura, Minsc and Boo are always awed by your endless knowledge. Sometimes we forget you are not a wise witch of Rashemen.~ [C0BLANK]
DO ~SetGlobal("C0AuraMinscToB2","GLOBAL",1)~
== BC0AUR25 ~Hehe, I can't think of a higher praise than to be compared to a wychlaran of your homeland, Minsc. Do you think they'd like me if we met?~
== BMINSC25 ~Minsc thinks they would very much like you. Our witches respect nothing more than knowledge and kindness, and you are full of both!~
== BC0AUR25 ~I've been thinking of finishing my exploration of the world before I go home. Maybe I'll go to Rashemen... I'd like to meet the witches, the telthors... maybe I might even be able to see some of the ancient gods.~
== BMINSC25 ~Ah, if you intend to come, Minsc would usually advise travel by ship. But Boo reminded me that Aura does not enjoy sea travel... Minsc suggests going through the Great Dale. It is longer, but safer. And Minsc likes the scenery.~
== BC0AUR25 ~Alright.~
== BMINSC25 ~And do not forget to see us at the Ice Dragon Berserker Lodge! We will greet you with a great feast, and show you our trials of strength and hardiness that toughened each of us into men! You will have the body to match your mind within a week of training!~
== BC0AUR25 ~Er... somehow, Minsc, I don't think that's possible. But I'll be sure to visit, just to say hello to a friend.~
EXIT

// Nalia

CHAIN
IF ~InParty("Nalia")
Range("Nalia",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNaliaToB1","GLOBAL",0)~ THEN BNALIA25 C0AuraNaliaToB1
~Aura, I've been thinking. Would you be willing to build a mutually beneficial connection between Lantan and my family, once all this has settled?~ [C0BLANK]
DO ~SetGlobal("C0AuraNaliaToB1","GLOBAL",1)~
== BC0AUR25 ~I'm not on the Ayrorch, Nalia... I'd love to see it happen, but it's not my privilege to decide things on my own.~
== BNALIA25 ~Surely even your people have heard of our exploits by now. I have little doubt that once you return home, you will be buried under the masses of Lantanna celebrating your name.~
== BC0AUR25 ~They wouldn't be the sort to do that! ...Would they really? I don't know...~
== BNALIA25 ~Regardless, I believe there's potential for Amn, or even other parts of the realms, to be made a better place with our talents. You have the knowledge to make great things, and I have the authority to make sure they are used responsibly.~
== BC0AUR25 ~Well... you might have a point...~
== BNALIA25 ~I know you have the same interest in helping people as I do. That's never changed, but we can always aim for higher. And the risks that come with such ambitions can be mitigated as long as we work together.~
== BC0AUR25 ~But, Nalia, I don't believe in deciding for others what's right.~
== BNALIA25 ~When did I imply—~
== BC0AUR25 ~No, I'm sure you didn't. Not on purpose. I just... need time to consider it. I believe you'd only wish the best for others, Nalia. But like I said, I'm not an authority, and I don't want to be. I can't do more than say it's possible.~
== BNALIA25 ~That's more than enough. I'm not demanding anything from you, Aura. I just want you to consider that such a path forwards is possible, if you trust me.~
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
Range("Neera",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeeraToB1","GLOBAL",0)~ THEN BNEERA25 C0AuraNeeraToB1
~Hey, Aura. Watch, a light spell completely under control, no surge! Not even a ripple!~ [C0BLANK]
DO ~SetGlobal("C0AuraNeeraToB1","GLOBAL",1)~
== BC0AUR25 ~So I see! I remember when even something so small made me afraid of it turning red and then exploding into a fireball.~
== BNEERA25 ~Isn't it funny how much my magic's changed in such a short time? Even the surges that happen aren't so bad anymore.~
== BC0AUR25 ~You're not suddenly going to say you miss the bad ones, are you?~
== BNEERA25 ~No. Hells no. I could do with more flowers, less terrible disasters. Though I can't rule out that they'll still happen now and again...~
== BC0AUR25 ~I'm... going to take a few steps back just in case.~
== BNEERA25 ~I was kidding! K–I–D–D–I–N–G! Sheesh, don't you trust me by now?~
== BC0AUR25 ~Of course I trust you personally, Neera. But sometimes the worst situation happens when you try to help, don't you already know that?~
== BNEERA25 ~Oh, you brat! I thought you were nice! I mean, you're not wrong, but still, ouch!~
== BC0AUR25 ~Hehe.~
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
Range("Rasaad",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRasaadToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraRasaadToB1
~Rasaad, how is my posture looking nowadays?~ [C0BLANK]
DO ~SetGlobal("C0AuraRasaadToB1","GLOBAL",1)~
== BRASAA25 ~Much improved as of late, without a doubt. You are lighter on your feet, Aura. And even more sprightly than usual.~
== BC0AUR25 ~Hehe, I guess I have you to thank to teach me a thing or two about pushing myself. I think I was just making excuses in the past.~
== BRASAA25 ~The path to self-perfection has many entrances. It is never too late to improve, and you have in many ways.~
== BC0AUR25 ~I'll probably never reach your level of discipline. But I think I can relate to your strength a little now. I've gotten more confidence than I could've ever imagined.~
== BRASAA25 ~That, I cannot commend only my own advice for. The influence of those around us affects who we are... and our own efforts, of course, matter more than anything.~
== BC0AUR25 ~Mhm.~
== BRASAA25 ~Perhaps you may be willing to exchange a few strikes? I will go easy on you.~
== BC0AUR25 ~Ahaha... that might be a little too much as I am right now, Rasaad. I'll think about taking you up on that offer if I grow a couple surprise inches.~
EXIT

// Sarevok

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Alignment("Sarevok",MASK_EVIL)
Global("C0AuraSarevok1","GLOBAL",0)~ THEN BSAREV25 C0AuraSarevok1
~What compels you to glare upon me with such contempt, gnome? I had thought such fire above your nerve, small and meager as you are. Speak, if you dare.~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevok1","GLOBAL",1)~
== BC0AUR25 ~I'm not afraid to speak, Sarevok, but there's nothing that we need to say to each other.~
== BSAREV25 ~Oh, I beg to differ. One does not simply ignore such a piercing gaze, as though intending to kill. Have you words for your contempt towards me? Get them over with, while I still care to listen.~
== BC0AUR25 ~Fine, though I doubt you'll like what I have to say. I'm merely trying to contemplate what Tamoko-san saw that led her to follow you.~
== BSAREV25 ~You are either very foolish or suicidal to mention that name in my presence, girl. What would you presume to know of her?~
== BC0AUR25 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~<CHARNAME> and I met her. On the day that we killed you. I'll never forget it... her standing before us, alone, eyes already dead, resigned to the end.~
== BC0AUR25 IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~I wasn't a part of what happened beneath Baldur's Gate. But, whether by fate or fortune, I met her... even then, I already knew she was resigned to death.~
== BC0AUR25 ~Regardless of the monster that you made yourself, Sarevok, I want to accept a possibility that there was something human that she saw. How could you have done that to her? What was she to you?~
== BSAREV25 ~Did you ask her what her desire was? Of whether she had any regrets for the path she walked? Do you know anything of her, save for her name and what blood ties she once held?~
== BC0AUR25 ~I...~
== BSAREV25 ~You do not, fool. Your understanding of that woman is clouded by preconceptions born of ignorance. Whatever explanation you believe you are owed, you shall receive no such satisfaction from me.~
== BC0AUR25 ~That's all the consideration you have? Nothing on what she would have wanted?~
== BSAREV25 ~The thoughts of the dead mean as much to us as the dust flying in the wind. She is gone. Nothing else matters.~
== BC0AUR25 ~No. I refuse to accept that. No matter what sins she was bound by, I still believe she retained her soul. Not like the one you've stolen.~
EXIT

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Alignment("Sarevok",MASK_EVIL)
Global("C0AuraSarevok1","GLOBAL",1)~ THEN BC0AUR25 C0AuraSarevok2
~I don't believe you, Sarevok.~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevok1","GLOBAL",2)~
== BSAREV25 ~You, and likely every other pawn within <CHARNAME>'s company. Save your breath until you think of something that might truly surprise me.~
== BC0AUR25 ~No, I don't mean that. I won't believe that you've never cared about her. I cannot believe that her life was all for nothing, thrown away for an absolute lie.~
== BSAREV25 ~Has it not occurred to you that her sins throughout her life were no fewer than mine?~
== BC0AUR25 ~Don't you dare—~
== BSAREV25 ~I do. Know this, gnome. That woman followed me, knowing the costs, the inevitable corruption that would taint her soul... and in the end, despite everything, she willingly offered her life to my cause.~
== BSAREV25 ~If there was doubt within her heart during her final moments, it was because she deluded herself to alleviate her own guilt.~
== BC0AUR25 ~She... she could have returned to the right path. No matter how darkly her soul was stained in blood, still, that is what her kin... what she would have wanted. I owed a debt, but I failed... because of you, Sarevok.~
== BSAREV25 ~Do you expect remorse? The atrocities of my past life are many, girl. One more shall hardly serve as any greater of a burden. Blame all the evils of the world upon me, if that provides any measure of comfort. I care not a whit.~
== BC0AUR25 ~...Akuji mi ni tomaru.~
== BSAREV25 ~All my sins will cling to my body, will they?~
== BC0AUR25 ~You—~
== BSAREV25 ~A hollow warning for one such as I. My body became dust with my first defeat, and this stolen life is my proof that there will be no karma to damn me. Do not expect me to be threatened so easily, foolish whelp.~
== BC0AUR25 ~...~
== BSAREV25 ~Now begone, and pester one who might care with your admonishments.~
EXIT

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(2)
!Alignment("Sarevok",MASK_EVIL)
Global("LS#SarevokRomancePath","GLOBAL",1)
Global("C0AuraSarevokGood1","GLOBAL",0)~ THEN BC0AUR25 C0AuraSarevokFinal1
~...~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevokGood1","GLOBAL",1)~
== BSAREV25 ~Praying, girl? I did not think you the sort, given I have never heard any god's name from your lips.~
== BC0AUR25 ~I don't pray to any single god, and certainly not for myself. This is for those I've lost on my journey... you may not care about the memory of the fallen, but I do.~
== BSAREV25 ~It will serve as little consolation for the untimely fallen, if they can even hear you.~
== BC0AUR25 ~They might not, but a little faith is better than nothing. Even the knowledge of not being forgotten can bring some peace.~
== BSAREV25 ~Hmph. A token effort to alleviate oneself of guilt, no more. You are more like her than you think, in that respect.~
== BC0AUR25 ~R—really...?~
== BSAREV25 ~Bah... if nothing else, the quiet company is preferable to the alternative choices. I will join you awhile.~
== BC0AUR25 ~You'll—?~
== BSAREV25 ~Though if you believe my presence taints your little ceremony, I will leave.~
== BC0AUR25 ~No, no... I didn't expect it, but maybe this isn't a bad thing. I know she'd be happy to hear it.~
== BSAREV25 ~...~
== BC0AUR25 ~I don't think I've ever seen you like this before, Sarevok.~
== BSAREV25 ~And what do you believe you see in me?~
== BC0AUR25 ~Eyes closed, sitting, with your face unclouded by ambition... you almost seem at peace for the first time.~
== BSAREV25 ~Is that so?~
= ~...~
= ~Aye. Perhaps.~
EXIT

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(2)
!Alignment("Sarevok",MASK_EVIL)
Global("LS#SarevokRomancePath","GLOBAL",1)
Global("C0AuraSarevokGood1","GLOBAL",1)~ THEN BC0AUR25 C0AuraSarevokFinal2
~Sarevok...~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevokGood1","GLOBAL",2)~
== BSAREV25 ~What do you want now, gnome?~
== BC0AUR25 ~We may never truly become friends, and what you've done can't be forgotten... but I believe in forgiveness, if you truly seek to earn it.~
== BSAREV25 ~...It is far, far too late for that, even if your forgiveness was of any worth.~
== BC0AUR25 ~Maybe. But if we gave up simply because we think it's "too late"... we'll only be tortured by regrets for what time we have remaining.~
== BSAREV25 ~And you believe that I, Sarevok, the madman and scourge of the Sword Coast, might feel something resembling 'regret'?~
== BC0AUR25 ~Before, I would have never considered it. Now... I want to at least have a bit of faith. I know there are those would want that... even if they're no longer with us.~
== BSAREV25 ~You speak as though you hardly believe your own words. However... such an offer may be more than I deserve. I will consider what you have said... no more or less.~
EXIT

// Valygar

CHAIN
IF ~InParty("Valygar")
Range("Valygar",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraValygarToB1","GLOBAL",0)~ THEN BVALYG25 C0AuraValygarToB1
~Aura?~ [C0BLANK]
DO ~SetGlobal("C0AuraValygarToB1","GLOBAL",1)~
== BC0AUR25 ~Yep?~
== BVALYG25 ~If I may take a moment... I hope you have the chance to see your dreams become reality one day.~
== BC0AUR25 ~Valygar... hehe, you know, I never thought that I'd hear that you say you believed in me.~
== BVALYG25 ~This journey has taught me many things. I have understood good and evil in many forms, and seen things I once believed impossible. If there is anyone I would trust to make nothing but good from magic, or any other talent... that person would have to be you.~
== BC0AUR25 ~That's... coming from you, that might be the biggest vote of confidence yet. I swear to you, I'll do my best not to let you down. Can you ask something of you, too?~
== BVALYG25 ~Go ahead.~
== BC0AUR25 ~I'm not asking for much. Just have a bit more faith. If my actions can convince someone who feared magic to see the good in it... that'll give me more incentive than anything.~
== BVALYG25 ~*sigh* That is quite the demand. But I'll do my best.~
EXIT

// Viconia

CHAIN
IF ~InParty("Viconia")
Range("Viconia",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraViconiaToB1","GLOBAL",0)~ THEN BVICON25 C0AuraViconiaToB1
~I must confess, Aura... beneath your naïveté and excessively saccharine demeanor, you are brimming with potential.~ [C0BLANK]
DO ~SetGlobal("C0AuraViconiaToB1","GLOBAL",1)~
== BC0AUR25 ~Thank you, Viconia. There... isn't any underlying criticism, is there?~
== BVICON25 ~Only a word of advice, which you would be wise to ponder. Your passivity will only lead you to sorrow. You hold knowledge that many would fear, much as you try to pretend otherwise. Use it to your own advantage.~
== BC0AUR25 ~I want to make the world a better place with my knowledge. Being feared wouldn't make me happier.~
== BVICON25 ~Such are the words repeated by many overeager whelps. How many have succeeded? Death and conflict spreads throughout the realms as a blight would regardless. We are standing in the midst of one such example.~
== BC0AUR25 ~Only the more reason someone has to try.~
== BVICON25 ~You may achieve something, or you will simply end up in an early grave. I see this as a foolish risk. So be it—whether you live long enough to see the sense of my words is in your fate alone.~
EXIT

// Wilson

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilsonToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraWilsonToB1
~Mmmmrgh...~ [C0BLANK]
DO ~SetGlobal("C0AuraWilsonToB1","GLOBAL",1)
SetGlobalTimer("C0AuraWilsonToBRestTalkTimer","GLOBAL",THREE_DAYS)~
== BWILSO25 ~Snort?~
== BC0AUR25 ~What? No, I am not sulking! Why would I possibly be sulking, huh? HUH?~
== BWILSO25 ~Snuffle snort.~
== BC0AUR25 ~Okay! So I lost best-of-three against you at fishing. It was an off day for me! I'm getting ready to regain my honor, just you wait!~
== BWILSO25 ~Growl.~
== BC0AUR25 ~*sigh* Somehow I just happened to learn to understand you before I even knew it. Better late than never, I suppose... I still don't know when and how everyone else figured it out.~
== BWILSO25 ~Sniff sniff. Rff?~
== BC0AUR25 ~Huh? No, we're not—okay, fine. Maaaaybe there's a chance we can be friends. Eventually. When I stop getting the shakes.~
== BWILSO25 ~Growl!~
== BC0AUR25 ~Okay, okay! Happy now?~
== BWILSO25 ~ROAR!~
== BC0AUR25 ~Eek! J—just as a side note, the challenge is still on, got it?~
EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilsonToB1","GLOBAL",2)~ THEN BC0AUR25 C0AuraWilsonToB2
~Mmph... where, where's my blanket? It's getting cold...~ [C0BLANK]
DO ~SetGlobal("C0AuraWilsonToB1","GLOBAL",3)~
== BC0AUR25 ~Oh, that's nice... it's not my blanket, but it's warm... is it you, <CHARNAME>? Thanks... *yaawwn*~
== BC0AUR25 ~It's a little heavy, though... if I could just get it to move a little to the right... there we go...~
== BC0AUR25 ~Whatever it is, it's nice and fluffy, like a stuffed animal... wait, fluffy? Huh...? Are those... ears? What's—~
== BC0AUR25 ~—!!!~
== BWILSO25 ~Snore...~
== BC0AUR25 ~AaaaiiieeeeeeeEEEEEEEEK!!!~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()
Interact("WILSON")~ EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilsonToB1","GLOBAL",3)~ THEN BC0AUR25 C0AuraWilsonToB3
~WILSOOOON!~ [C0BLANK]
DO ~SetGlobal("C0AuraWilsonToB1","GLOBAL",4)~
== BWILSO25 ~Growl?~
== BC0AUR25 ~Oh, don't you start with that! Why? WHY?~
== BWILSO25 ~Snort. Snuffle snuff.~
== BC0AUR25 ~Okay, so I couldn't find my blanket. Probably got burned up during a battle somewhere, I can't remember. But still! That doesn't mean you can just decide to share body warmth with me without my permission!~
== BWILSO25 ~Growl...~
== BC0AUR25 ~You—you're really sorry? You're not trying to fool me?~
== BWILSO25 ~Roar.~
== BC0AUR25 ~*sigh* O—okaaay! Alright! Apology accepted. And I'm sorry for pulling so hard on your ears too. That must've hurt.~
== BWILSO25 ~Rff. Sniff, snuffle snuff.~
== BC0AUR25 ~I can really pet them? Well... alright, I, I can do this! One step, two steps...~
== BWILSO25 ~Snuffle...~
== BC0AUR25 ~Hehe, they're kind of nice and round... this isn't so bad...~
== BWILSO25 ~Roar.~
== BC0AUR25 ~Yes, my eyes are tightly closed! You didn't think it'd be so easy for me, did you?~
== BWILSO25 ~Groah. Grr.~
== BC0AUR25 ~Sure, it's a start. Thanks, Wilson. I—somehow—understand that you care. I think. I'm still not ruling out being eaten one day.~
== BWILSO25 ~ROAR!~
== BC0AUR25 ~Eek! I was just joking!~
EXIT
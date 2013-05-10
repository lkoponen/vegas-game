def prompt
	puts "Please make a selection."
	print "> "
end

def goodbye(why)
	puts "#{why}"
	puts
	Process.exit(0)
end

def start
	puts "Welcome to Las Vegas! The city of sin! Ready to have some fun?"
	prompt; gets.chomp; puts
	puts "Where are you staying this visit?"
	puts "1. Encore. I got swag, baby, and I am doing it big!"
	puts "2. Harrahs. Cheap and on the strip. My $$ is for drinks and tables!"
	puts "3. Offstrip @ Marriott Residence Inn. Space and cost trump fanciness."

	prompt; hotel = gets.chomp; puts

	if hotel == "1"
		encore()
	elsif hotel == "2"
		harrahs()
	elsif hotel == "3"
		marriott()
	else
		goodbye("You get kicked out of Vegas for not following simple directions!")
	end
end

def encore
	puts "Look at you, high roller!"
	puts "Encore offers you a choice of gifts for choosing to stay with them."
	puts "1. A Show: Tickets to see the Blue Man Group at Mandalay Bay."
	puts "2. Dinner: For two at The Wicked Spoon Buffet at the Cosmopolitan."
	puts "3. Spa: A day of pampering at the Wynn."

	prompt; prize = gets.chomp.downcase; puts
	prize(prize)
end

def prize(prize)
	if prize.include? "show"
		blue_man_group()
	elsif prize.include? "dinner"
		free_buffet()
	elsif prize.include? "spa"
		spa()
	else
		puts "Please select one of the following: show, dinner or spa."
		prompt; prize = gets.chomp.downcase; puts
		prize(prize)
	end
end

def spa
	puts "Smart! Let's get some tlc before we DESTROY ourselves a la Vegas."
	puts "You walk into the spa and are given a fluffy, white robe."
	puts "The receptionist offers you a choice of treatments."
	puts "1. I would like to give these claws some human semblance. Mani/Pedi please."
	puts "2. My muscles are super tight. Spaghetti-fy me with a massage!"
	puts "3. I have never had a mud bath before. YOLO!"

	prompt; treatment = gets.chomp; puts

	if treatment == "1"
		mani_pedi()
	elsif treatment == "2"
		massage()
	elsif treatment == "3"
		mud_bath()
	else
		puts "I don't know what that means."
		puts "Looks like we are skipping the spa."
		puts "How about we go to dinner?"
		dinner_choice()
	end
end

def mani_pedi
	puts "I wasn't going to say anything, but your cuticles could use some work..."
	puts "One hour later, you have human hands and feet again! Yay not being a hobbit!"
	puts "What would you like to do next on your Vegas trip?"
	puts "1. Hair done, nails done, errythang did! I am feeling good. Time to dance!"
	puts "2. I am feeling peckish. Food sounds pretty good."
	puts "3. I want to explore. Let's hit the downtown scene!"

	prompt; activity = gets.chomp; puts

	if activity == "1"
		clubbing()
	elsif activity == "2"
		dinner_choice()
	elsif activity == "3"
		downtown()
	else
		puts "You aren't making any sense. Go home, baby, you're drunk!"
		goodbye("You go to the room and sleep. Well, at least you have nice nails now.")
	end			
end

def massage
	puts "You do look a little tense. A massage sounds like just the ticket."
	puts "You hear the sounds of the ocean as all of your knots get pounded out."
	puts "You have not felt so relaxed in a LOOOOONG time."
	puts "You walk out of the massage room and bump into some one."
	puts "What the WHAT? It is Criss Angel!"
	puts
	puts "He apologizes for running into you and offers you tickets to his show."
	puts "1. That sounds legen-(WAITFORIT)-dary! Let's go!"
	puts "2. Magic is not really my scene. Thanks for the invite, but we are clubbing."
	puts "3. I don't believe in magic. I only believe in the power of burritos. FOOD!"

	prompt; activity = gets.chomp; puts

	if activity == "1"
		criss_angel()
	elsif activity == "2"
		clubbing()
	elsif activity == "3"
		dinner_choice()
	else
		puts "You are flabbergasted, obvi. It's ok. Criss Angel walks away."
		puts "There is only one way to redeem yourself - just dance (it will be ok!)"
		clubbing()
	end
end


def walk_strip
	puts "You walk around for a bit and see a lot of really cool sights."
	puts "Stop one: FAT TUESDAYS! Time to get your drink on!"
	puts "Your shopping at the Forum at Caesar's Palace is interrupted by a kitschy animatronics show. Fun!"
	puts "You watch a couple of dancing fountain shows at the Bellagio."
	puts "You end your trip at Paddy's. Unlimited beer and beer pong for a flat rate? SWEET!"
	puts "Where would you like to go next on this epic voyage?"
	puts "1. All that walking has got me ready to eat a bear! (I said bear...not beer)."
	puts "2. The sun has set. That can only mean one thing. CLUBBING!"
	puts "3. So sleepy. Time for bed!"

	prompt; activity = gets.chomp; puts

	if activity == "1"
		dinner_choice()
	elsif activity == "2"
		clubbing()
	elsif activity == "3"
		goodbye("Sigh. Vegas is wasted on you. I will allow you to go to bed. Try to be better tomorrow.")
	else
		puts "You aren't making any sense. Apparently, you have had too much beer at Paddy's."
		puts "I think you need to go sleep it off."
		goodbye("You go to your room, drink some water, and pass out. Ugh. Next time, train before you come to Vegas.")
	end
end

def criss_angel
	puts "You head over to the show and are seated in the front row."
	puts "You see the best magic show you have ever seen."
	puts "The kicker? Criss Angel brings you on FREAKING stage... and sets you on fire!"
	goodbye("Magic is awesome! Best night ever. Can't wait to see what tomorrow will bring!")
end

def mud_bath
	puts "Icky... but you are in Vegas, so live it up, I guess."
	puts "You are covered in mud. Yay?"
	puts "You enjoy your mineral-infused soak and then head to rinse off."
	puts "On your way to the showers, you run into a bachelorette party."
	puts "The (slightly-drunk) bride-to-be thinks it is hilarious that you are covered in mud."
	puts "She invites you and your group to go out with her and her friends."
	puts "1. I am sooo ready for a \"The Hangover\"-esque night! Party time!"
	puts "2. Eh, not so into the drunk girls. Time for dinner!"
	puts "3. Sounds fun, but I really just want to go explore downtown."

	prompt; activity = gets.chomp; puts

	if activity == "1"
		bachelorette()
	elsif activity == "2"
		dinner_choice()
	elsif activity == "3"
		downtown()
	else
		print "I don't know what that means. Apparently, you are too intimidated to "
		puts "select a GD number! I decide for you. You are raging with the girls."
		bachelorette()
	end	
end

def bachelorette
	puts "You embark on a crazy night with the ladies. You remember hitting 2 different clubs."
	puts "Then... it gets a little murky. You wake up on the roof of the Venetian."
	goodbye("You find a picture of you with Elvis at a chapel in your pocket. Annulment?")
end

def free_buffet
	puts "All-you-can-eat, eh? Apparently, you like a challenge."
	puts "The buffet is open from 5 - 9 for dinner."
	puts "Would like to eat now or gamble first?"

	prompt; answer = gets.chomp.downcase; puts

	if answer.include? "eat"
		buffet()
	elsif answer.include? "gamble"
		gamble()
	else
		puts "I am annoyed by your inability to enter a number."
		puts "For that reason, I am choosing for you."
		gamble()
	end	
end

def gamble
	puts "Hey, you ARE in Vegas, amirite? Time to spend some monayyyy!"
	puts "You walk around the casino for a bit, trying to figure out where your Vegas spirit guide will take you."
	puts "1. Your eyes fall upon the slot machines, and your spirit soars."
	puts "2. You lock eyes with the black jack dealer, and you know it is on."
	puts "3. Spin spin spin. Roulette is where it is at, baby!"

	prompt; gambling = gets.chomp; puts

	if gambling == "1"
		slots()
	elsif gambling == "2" 
		black_jack()
	elsif gambling == "3"
		roulette()
	else
		puts "DUDE! We have done this SOOOO MANY TIMES! Pick a freaking number."
		puts "You again lose privileges."
		puts "I am setting you loose upon the Vegas club scene."
		clubbing()
	end		
end

def slots
	puts "You walk into the slots area of the casino."
	puts "Your eyes dart from machine to machine, trying to feel which one is lucky."
	puts "You feel the love from three separate machines."
	puts "1. Michael Jackson. This Smooth Criminal has got you feeling like you could win big!"
	puts "2. Lord of the Rings. One machine to rule them all, right?"
	puts "3. Classic Diamonds. An oldie, but hopefully, goodie."

	prompt; slot_machine = gets.chomp; puts

	if slot_machine == "1"
		print "Michael Jackson (unlike Billy Jean) is definitely your lover. You "
		puts "win $300 after 45 minutes!"
		buffet()
	elsif slot_machine == "2"
		print "The precious. THE PRECIOUS. Precious benjamins, that is! You win "
		puts "$450 after playing for an hour!"
		buffet()
	elsif slot_machine == "3"
		puts "Eh, retro is not always better. You win $50 after an hour and a half!"
		puts "But you also spent $50, soooo... I guess you break even."
		buffet()
	else
		goodbye("You lose. The gambling gods frown upon such indecision. They banish you.")
	end
end

def black_jack
	puts "You play for about 30 minutes."
	puts "It is almost time to head for dinner, so you decide to bet it all on this last hand."
	puts "You are dealt a \"10\" and a \"4\". The dealer is showing a \"5\"."
	puts "1. Hit me!"
	puts "2. Stay!"

	prompt; choice = gets.chomp; puts

	if choice == "1" 
		puts "You are dealt a \"5\". That gives you \"19\". What would you like to do?"
		puts "1. Stay!"
		puts "2. Hit!"

		prompt; choice == gets.chomp; puts

		if choice == "1"
			puts "The dealer flips over a \"10\". He must hit on less than \"17\". He draws a \"10\"."
			puts "Dealer busts! You win $150!"
			buffet()
		elsif choice == "2"
			puts "Really? On \"19\", you hit? You bust. (Duh!)"
			puts "Time to drown your sorrows in steak."
			buffet()
		else
			puts "I don't know what that means. You lose all your money."
			goodbye("You go home, ashamed of your lack of black jacky ness.")
		end
	elsif	choice == "2"
		puts "You decided to stay. The dealer flips his second card to reveal a \"10\"."
		puts "He must hit on 16, so he draws a new card and reveals a \"5\". \"21\"!"
		puts "Dealer wins. You head to the buffet to eat away your feelings of loss."
		buffet()
	end
end

def roulette
	print "The wheel is your friend. You play for an hour, have a couple whiskey cokes, "
	puts "and are up $150. It is time to eat, so you decide to play one more game."
	puts "1. Bet on black, cause once you go black..."
	puts "2. Bet on red, comrade."
	puts "3. Feeling SUPER lucky. Enter a number from 1 to 36."
	puts "You enter either red, black or a number from 1 to 36."

	prompt; bet = gets.chomp; puts

	if bet.downcase == "black"
		puts "You win $25. Awesome. Time from nomz."
		buffet()
	elsif bet.downcase == "red"
		puts "You lose. Whatever, it's nothing that unlimited shrimp can't cure."
		buffet()
	elsif bet.to_i == 1 + rand(36)
		puts "You win $200! Lucky sonuva..."
		puts "You decide to celebate your winnings in burgers, salad and gelato, oh my!"
		buffet()
	else
		puts "You lose. Sorry 'bout it."
		puts "Time to test the limits of the human stomach."
		buffet()
	end
end

def buffet
	puts "Mmmmm. Time to feast."
	puts "Everything the light touches is your victim."
	puts "Cream puffs, roast beef, pho, this buffet has everything!"
	puts "1. I will eat like a civilized person and stop when I am full."
	puts "2. I will eat like a savage and make the buffet regret their decision to let me in."
	puts "3. I will eat a bit. I just want a small cushion to absorb some alcohol. Team experienced drunk!"

	prompt; eating_choice = gets.chomp; puts

	if eating_choice == "1"
		civilized_eater()
	elsif eating_choice == "2"
		savagery()
	elsif eating_choice == "3"
		team_drunk()
	else
		puts "The buffet kicks you out for your inability to type a FREAKING number."
		puts "You decide to atone for your lack of numeric sophistication by clubbing!"
		clubbing()
	end
end

def civilized_eater
	puts "You so classy. The plus side is that you will not feel like a bloated whale."
	puts "The negative side is that you had to make CHOICES at a BUFFET. Ugh. Who does that?"
	puts "1. Take your svelte self to da club."
	puts "2. Continue your health-conscious behavior. Walk the strip."
	puts "3. This is where eating lightly pays off: POOL TIME!"

	prompt; choice = gets.chomp; puts

	if choice == "1"
		clubbing()
	elsif choice == "2"
		walk_strip()
	elsif choice == "3"
		pool()
	else
		puts "Hrmph. Too classy to pick a number?"
		goodbye("Vegas evicts you for being so sadiddy.")
	end	
end

def team_drunk
	puts "That is why we are friends. <3"
	puts "You have some pasta and a few things for dessert."
	puts "A promoter notices that your table is eating lightly and figures you out."
	puts "You start talking and the promoter decides you are all pretty cool."
	puts "He offers to take all of you to see Tiesto at XS."
	puts "1. Awesome! XS is legit and who doesn't love Tiesto?"
	puts "2. XS is overrated. Thanks for the offer, but we are going somewhere else."

	prompt; choice = gets.chomp; puts

	if choice == "1"
		tiesto()
	elsif choice == "2"
		clubbing()
	else
		goodbye("A wild pikachu appears and steals all your money. If you are going to type in nonsense, so am I!")
	end			
end

def savagery
	puts "You descend upon the buffet with the stomachs of 1000 men."
	puts "Mashed potatoes, fried chicken, prime rib. Nothing escapes your voracious maw."
	puts "A waitress sees your vigor and is impressed. She invites you to hang out after her shift."
	puts "1. Spontaneity is my middle name! Let's go!"
	puts "2. Sounds fun, but oh so full. Food coma..."
	puts "3. No thank you. I have to go walk off this food baby! Time to hit the strip."

	prompt; savage_decision = gets.chomp; puts

	if savage_decision == "1"
		downtown()
	elsif savage_decision == "2"
		nap()
	elsif savage_decision == "3" 
		walk_strip()
	else
		puts "So much food has impaired your decision making skills."
		puts "Don't worry, I will decide for you. Time to dance the night away!"
		clubbing()
	end	
end

def blue_man_group
	puts "The always entertaining Blue Man Group! Excellent choice."
	puts "I am sure you will love the show."
	puts

	dinner_choice()
end

def dinner_choice
	puts "It is getting a little late. Dinner sounds awesome."
	puts "Where would you like to go?"
	puts "1. Bouchon by Thomas Keller. Pricey, but oh so delicious!"
	puts "2. Wicked Spoon! Vegas = Buffet for sure. Let's Roll!"
	puts "3. Somewhere off the strip. I want to get away from the madness."

	prompt; dinner = gets.chomp.downcase; puts

	if dinner == "1"
		fancy_dinner()
	elsif dinner == "2"
		buffet()
	elsif dinner == "3" 
		offstrip_dinner()
	else
		puts "I said to choose a number. Simple instructions. No food for you!"
		puts "You have lost decision making privileges for now."
		puts "As a result, I have decided that you will go clubbing next."
		puts
		clubbing()
	end
end

def fancy_dinner
	puts "You decide to order the pre-fixe menu. Everything is absolutely wonderful."
	puts "Dinner caps off with a trio of creme brulees: vanilla, chocolate and peach."	
	puts "As you go to pay, you see a familiar face out of the corner of your eye."
	puts
	puts "It is Sir Richard Branson, sitting at the bar!"
	puts "You walk over to introduce yourself, and offer to buy him a drink."
	puts "Sir Richard takes a liking to you due to your charm and wit."
	puts "He asks if your party would like to accompany him to a secret bar nearby."
	puts "1. Say \"Hell yeah! That sounds awesome!\""
	puts "2. Say \"No thank you. We were planning on going to see the Blue Man Group.\""
	puts "3. Say \"Thank you for the offer, but we were going to go clubbing tonight.\""

	prompt; branson = gets.chomp; puts

	if branson == "1"
		goodbye("You have the best night ever. Sir Richard invites you to grab French Toast in France as the sun rises. Vegas Win!")
	elsif branson == "2"
		see_show()
	elsif branson == "3"
		clubbing()
	else
		goodbye("You are tongue-tied. He leaves. Lame sauce. Leave Vegas in shame!")
	end
end

def offstrip_dinner
	puts "I know what you mean. The strip can be kinda crazy at times."
	puts "We have a few options for you if you want to get away for a bit."
	puts "1. Lotus of Siam - One of the BEST Thai restaurants in the nation."
	puts "2. Teppanyaki - Dinner and a (somewhat dirty) show."

	prompt; dinner_choice = gets.chomp; puts

	if dinner_choice == "1"
		lotus_of_siam()
	elsif dinner_choice == "2"
		teppanyaki()
	else
		goodbye("How many times have we done this? PICK A NUMBER. That's it. You get nothing. Go home.")
	end			
end

def lotus_of_siam
	puts "Lotus of Siam is freaking delicious, but unfortunately, every one else agrees."
	puts "The wait is over an hour and a half."
	print "You enjoy some amazing Northern Thai dishes, "
	puts "but you are definitely not making any shows."
	puts "What else would you like to do tonight?"
	puts "1. I want to dance! Just get in a circle, throw all the shoes in the middle and DANCE!"
	puts "2. I want to explore downtown. I hear it is really booming!"
	puts "3. I think I just want to walk around a bit and get rid of this Thai food baby."

	prompt; activity = gets.chomp; puts

	if activity == "1"
		clubbing()
	elsif activity == "2" 
		downtown()
	elsif activity == "3"
		walk_strip()
	else
		goodbye("Due to your lack of proper number inputting-ness, you get food poisoning. Enjoy the rest of your trip.")
	end
end

def tiesto
		puts "You cut the super long line at XS, and the promoter takes you to the VIP."
		puts "You have a couple of drinks and Tiesto finally comes on stage."
		puts "You dance your a$$ off and Tiesto pulls you on stage for being so awesome."
		goodbye("Best. Night. EVER!!!!")
end

def teppanyaki
	puts "Good choice! You walk in and see lots of pictures of celebrities with the owner."
	puts "You are led to your teppanyaki station and meet your hilarious chef."
	puts "He goes all out for you. Onion volcano, freshly made sauces, and meat cooked to perfection."
	puts "You are seated next to a club promoter. He likes the cut of your jib."
	puts "He offers to get your entire party into XS at the Wynn to watch Tiesto."
	puts "1. Go see Tiesto."
	puts "2. Thank him for the invitation, but decide to go see the Blue Man Group instead."

	prompt; choice = gets.chomp; puts

	if choice == "1"
		tiesto()
	elsif choice == "2"
		see_show()
	else
		puts "I don't know what that means."
		puts "The promoter turns out to be messing with you."
		goodbye("You go home because you are devastated at being subjected to such a ruse.")
	end	
end

def see_show()
	puts "You head over the Mandalay Bay and arrive just in time for the show."
	puts "You have a wonderful time and discuss the show excitedly with your friends."
	puts "Your friend asks what you want to do next."
	puts "1. Go to bed. It has been a tiring day. Time for some rest!"
	puts "2. Time to rage! Let's go clubbing!"

	prompt; activity = gets.chomp; puts

	if activity == "1"
		goodbye("You had a solid night. Get some sleep and get ready to have an epic Saturday!")
	elsif activity == "2"
		clubbing()
	else
		puts "You are so tired that you do not even make sense."
		goodbye("Time to rest, I guess... Go sleep, noob. Try to be better tomorrow.")
	end
end

def clubbing
	puts "You party animal! Where would you like to go clubbing?"
	puts "1. Tao at the Venetian."
	puts "2. The Bank at the Bellagio"
	puts "3. By clubbing, I meant STRIP clubbing!"

	prompt; club = gets.chomp; puts
	club_choice(club)lotus_of_siam
end

def club_choice(club)
	if club == "1"
		tao()
	elsif club == "2"
		bank()
	elsif club == "3"
		stripclub()
	else
		puts "I doesn't know that club. Please select one of the options I offered."
		puts "1. Tao"
		puts "2. The Bank"
		puts "3. BOOBIES!"
		prompt; club = gets.chomp; puts
		club_choice(club)
	end
end

def tao
	goodbye("Tao is super crowded, but it's all good. You dance your face off and have a great night")
end

def bank
	goodbye("The Bank is not as popular, but there is space to dance and free drinks til 11! You have a great time!")
end

def stripclub
	puts "You dirty birdy! I am not writing naughty adventures for you!"
	goodbye("You are on your own! Bye!")
end

def downtown
	puts "Awesome! Downtown rocks. You cab over and head to the video game bar, Insert Coins."
	puts "You play a few games and have a few shots of tequila. Drunk Halo ftw."
	puts "Your crew decides to head over to the secret, speakeasy-themed bar, \"The Laundry Room\"."
	laundry_room()
end


def laundry_room
	puts "The Laundry Room only fits 20 people at a time. You are asked how many people are in your party."
	puts "Enter the amount of people in your party."

	prompt; number = gets.chomp; puts

	if !(number.to_i)
		puts "This club is picky. They don't allow people who can't enter a number when asked."
		puts "You are denied entrance and asked to leave."
		goodbye("Bummed over not getting into the bar, you head home and go to sleep. Better luck tomorrow!")
	elsif number.to_i >= 3
		puts "Sorry! There were already 18 people here. You are denied entrance."
		puts "It's cool! There are other places to go. Let's head back to the strip."
		clubbing()
	elsif number.to_i < 3
		puts "Sweet! There is space for your group!"
		puts "You walk in and order an old fashioned. It is strong and delicious."
		puts "You make friends with the other patrons and make plans for the next day."
		puts "In fact, you have so much fun, it should be PROHIBITED (get it? yeah? Prohibition?)"
		puts "What? I like puns. Whatever. Moving on."
		puts "It has been a great night. Time to head home"
		goodbye("You roll back to the hotel and crash on the bed. Awesome night!")
	end
end

def pool
	puts "You are sexy and you know it! Time to go soak up some sun."
	puts "You hang out at the pool for a couple of hours, sipping margaritas."
	puts "You look to your left and see a group of sexified men and women."
	puts "You strike up a conversation and find out they are dancers in some local shows."
	puts "They enjoy your confidence and ask if you want to take BODY SHOTS!"
	puts "1. WOOO! BODY SHOTS!"
	puts "2. Ugh. I raged too hard already. I need a post-daydrinking nap!"
	puts "3. Uh, no thanks. I don't like licking strangers. Time for dinner."

	prompt; choice = gets.chomp; puts

	if choice == "1"
		body_shots()
	elsif choice == "2"
		nap()
	elsif choice == "3"
		dinner_choice()
	else
		puts "Their blatant sexuality seems to be too much for you to handle."
		goodbye("You head home, watch \"The Sound of Music\" on your laptop, and go to sleep.")
	end	
end

def body_shots
	puts "You party animal! The dancers cheer and you all head over to the bar."
	puts "Pick your poison"
	puts "1. Tequila"
	puts "2. Vodka"
	puts "3. Kamikaze Shots!"

	prompt; alcohol = gets.chomp; puts

	if alcohol == "1"
		tequila()
	elsif alcohol == "2"
		vodka()
	elsif alcohol == "3"
		kamikazes()
	else
		puts "The bartender cuts you off before you even order."
		goodbye("Your friends drag you home, put you to bed, then go out and have fun without you.")	
	end			
end

def tequila
	puts "You take a couple shots, then hear a familiar voice at the bar."
	puts "You turn and spot the Most Interesting Man in the World!"
	puts "You walk over and give him a high-five for being so awesome."
	puts "He likes your moxie and asks if your group would like to leave with him."
	puts "1. Uh, it is the Most Interesting Man in the World. I think a resounding \"YES\" is in order."
	puts "2. Thanks for the offer, but my heart is set on dancing tonight!"
	puts "3. I would like to, but so much drinking already. I really need to go to bed."

	prompt; choice = gets.chomp; puts

	if choice == "1"
		interesting()
	elsif choice == "2"
		clubbing()
	elsif choice == "3"
		goodbye("You stumble back to your room and fall asleep in the tub. Hey, at least you made it back!")
	else
		goodbye("He walks away because you are speaking nonsense. You leave the pool and fall asleep in the hotel lobby.")
	end
end

def interesting
	puts "Excellent choice. It doesn't matter what you do."
	puts "You are with the Most Interesting Man in the World. It will be epic."
	goodbye("Congrats on winning Vegas!")
end

def vodka
	puts "Classic. Vodka shots it is! You have a couple shots, dance and then head home."
	puts "What would you like to do next?"
	puts "1. I am drunk! Let's dance!"
	puts "2. I need to sober up a bit. Food is probably a good call."
	puts "3. Whoo! I don't care! Let's just go somewhere! Whoo!"

	prompt; action = gets.chomp; puts

	if action == "1"
		clubbing()
	elsif action == "2"
		dinner_choice
	elsif action == "3"
		puts "Cool! You are so down! I love it! Let's go to downtown!"
		downtown()
	end
end

def kamikazes
	puts "Wow. You go hard."
	goodbye("You wake up with a tattoo of a shark riding a bear. What did you expect?")
end

def harrahs
	puts "A reasonable choice. You settle in and take a couple celebratory shots with your friends."
	puts "Where would you like to go now?"
	puts "1. Dinner!"
	puts "2. Clubbing!"
	puts "3. Pool!"

	prompt; action = gets.chomp; puts

	if action == "1"
		dinner_choice()
	elsif action == "2"
		clubbing
	elsif action == "3"
		pool()
	else
		puts "I said select a number. You are evicted from Vegas for not following directions."
	end		
end

def nap
	puts "You take a nap for one hour."
	puts "You wake up and feel refreshed!"
	puts "What would you like to do next?"
	puts "1. I feel ready to hit the dance floor!"
	puts "2. I want to stuff my face. Take me to the meat!"
	puts "3. Let's go exploring! Downtown sounds great!"

	prompt; action = gets.chomp; puts

	if action == "1"
		clubbing()
	elsif action == "2"
		dinner_choice()
	elsif action == "3"
		downtown()
	else
		puts "You seem to lack the coordination to enter a number. Maybe some food will help?"
		dinner_choice()
	end		
end

def marriott
	puts "Cool! The Residence Inn is a about a mile off the strip, but you get free breakfast!"
	puts "You settle into the hotel and take a couple of shots. Time to VEGAS!"
	puts "What would you like to do next?"
	puts "1. The sun is out. I think it is time to party aquatic-style!"
	puts "2. The hunger. It moves me."
	puts "3. Let's see the sights! Drinking and exploring sound great!"

	prompt; action = gets.chomp; puts

	if action == "1" 
		pool()
	elsif action == "2"
		dinner_choice
	elsif action == "3"
		downtown()
	else
		puts "Slow down, tiger! You have only been here for 45 minutes, and already you are incoherent."
		puts "How about we just get a little food in you?"
		dinner_choice()
	end				
end

start()
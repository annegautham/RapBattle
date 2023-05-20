#!/bin/bash
#Quarter 3 Project, Rap Battle :)

clear

#introduction
echo "Oh no, _____ challenged u to a ..."
sleep 2
#WSL cannot play audio, but if you would like to play audio, then uncomment the line below
#python3 Audio.py "Audio/AirHorn.py"
figlet "RAP BATTLE"

sleep 1
clear

echo "What is your rapper name?"
read RapperName
sleep 1

#displays _____ in 3 formats, based on what level you select
echo "Noice! What level of _____ do you wanna go against? (E for easy, M for medium, S for Sicko)"

read level

clear
# make seperate folder called Pics with different pics of person

# if [ $level = "E" ]; then
#     asciiview Pics/p1.jpg
# elif [ $level = "M" ]; then
#     asciiview Pics/p2.jpg
# elif [ $level = "S" ]; then
#     asciiview Pics/p3.jpg
# fi
echo "$RapperName, are you ready to throw down in this epic rap battle!"

#a quick ready up
read Ready

if [ $Ready = "yes" ]; then
    echo "Coolios! Get Ready to drop them bars!"
elif [ $Ready = "no" ]; then
    echo "Well too bad, your grade depends on it. Get ready to drop them bars!"
fi

#startup
sleep 1
figlet 3
sleep 1
figlet 2
sleep 1
figlet 1
sleep 1
figlet GOOOOOOOO!
sleep 1

clear 

#Identifiers
pI="_______:\n"
uI="You:\n"
score=0

# _____  P1
printf "$pI Listen up $RapperName, it's time for class\n"
sleep 3
printf "I'll teach you Linux and keep you on task.\n"
sleep 3
printf "Cybersecurity's my game, I'll keep you safe,\n"
sleep 3
printf "From all the hackers and the cyber snakes\n"
sleep 3
#WSL cannot play audio, but if you would like to play audio, then uncomment the line below
#python3 Audio.py "Audio/OHH.py"
clear 

#basic instructions
printf "Now it's your turn! End the phrase with a rhyme!\n"
sleep 1
echo

#prompts
printf "$uI Hey, _____, why so aggressive?\n"
sleep 3
printf "Is it 'cause you're scared, and you can't be _____\n"

#reads word entered by user and checks if rhyme with aggressive, and if so, gives good prompt, otherwise, insults you.
read var
tOrF=$(python3 Rhyme.py "$var" "aggressive")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "Nice! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "Ha u noob!\n"
    echo
fi

sleep 3
printf "You might know your stuff, but you can't intimidate me,\n"
sleep 3
printf "I'll rise to the challenge, and you'll ____\n"

#similarly checks rhyme but with word 'me'
read var
tOrF=$(python3 Rhyme.py "$var" "me")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "Fire! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "U SUCK!\n"
    echo
fi
sleep 3

clear

#_____ P2
printf "$pI You think you know it all, but you're just a novice,\n"
sleep 3
printf "I'll teach you how to code, and you'll make progress.\n"
sleep 3
printf "You better bring your A-game, 'cause I'm not playing.\n"
sleep 3
printf "I'll test your skills and you'll be left praying.\n"
sleep 3
#WSL cannot play audio, but if you would like to play audio, then uncomment the line below
#python3 Audio.py "Audio/OHH.py"
clear

#Your prompt P2
printf "$uI Bring it on, _____, I'm ready for the test,\n"
sleep 3
printf "I'll write some scripts, that'll put you to the ____\n"

read var
tOrF=$(python3 Rhyme.py "$var" "test")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "YOOOO! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "UR SO BAD AT LINUX HAHAHA\n"
    echo
fi

sleep 3
printf "I'll make them complex, and I'll make them neat,\n"
sleep 3
printf "And when it's all done, you'll be left in ____\n"

read var
tOrF=$(python3 Rhyme.py "$var" "neat")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "V COOL - U Sure know ur linux commands! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "U MAKE ME WANNA BASH MY HEAD AGAINST THE WALL UGHHHHHH!\n"
    echo
fi
sleep 3
clear

#_____ P3
printf "$pI You might think you're good, but you're not the only one,\n"
sleep 3
printf "I've been writing bash scripts since before you begun.\n"
sleep 3
printf "I can automate anything, with just a few lines,\n"
sleep 3
printf "And I'll make it look easy, like sipping on some fine wines.\n"
sleep 3
#WSL cannot play audio, but if you would like to play audio, then uncomment the line below
#python3 Audio.py "Audio/OHH.py"
clear

#Your Bars P3
printf "$uI You're talking big, but can you back it up?\n"
sleep 3
printf "Imma challenge you, and you'll see what's ____.\n"

read var
tOrF=$(python3 Rhyme.py "$var" "up")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "YAYYYY! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "GET BETTER BUB HAHAHA\n"
    echo
fi

sleep 3
printf "We'll write some scripts, and we'll see who's better\n"
sleep 3
printf "And when it's done, I'll be the one who's the _____\n"

read var
tOrF=$(python3 Rhyme.py "$var" "better")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "WOAAHHHH! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "String YOU = new String(“Bad”)\n"
    echo
fi
sleep 3
clear


#_____ P4
printf "$pI I'll show you how to secure a network,\n"
sleep 3
printf "And keep the hackers at bay, it's no sweat.\n"
sleep 3
printf "You might be young, but I'm not intimidated,\n"
sleep 3
printf "I'm _____, and I'm not to be underestimated.\n"
sleep 3
#WSL cannot play audio, but if you would like to play audio, then uncomment the line below
#python3 Audio.py "Audio/OHH.py"
clear

#Your part P4
printf "$uI Okay, _____, you got me on this round,\n"
sleep 3
printf "Your scripts are slick, and I can't even make a ____\n"

read var
tOrF=$(python3 Rhyme.py "$var" "round")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "HEEHEEHEEHAA! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "GRRRR!\n"
    echo
fi

sleep 3

printf "You might know your stuff, but you can't intimidate me,\n"
sleep 3
printf "I'll rise to the challenge, and you'll ____\n"

read var
tOrF=$(python3 Rhyme.py "$var" "me")
count=$(python3 Syllables.py "$var")
if [ $tOrF = "True" ]; then
    echo
    printf "SICK! That was $count syllables!\n"
    score=$(($score+1))
    echo

elif [ $tOrF = "False" ]; then
    echo
    printf "ur so bad at linux hahaha ur computer is gonna get hacked!\n"
    echo
fi

sleep 3
clear

#_____dya Ending
printf "$pI Well said, $RapperName, you've got some skills,\n"
sleep 3
printf "And you've shown me that you've got some thrills.\n"
sleep 3
printf "I'll teach you what I know, and you'll teach me too,\n"
sleep 3
printf "Together we'll make a great cybersecurity crew.\n"
sleep 3
#WSL cannot play audio, but if you would like to play audio, then uncomment the line below
#python3 Audio.py "Audio/OHH.py"
clear

#Score returned (sum of syllables)
echo "Great Job! Your score was $score"
sleep 3
echo "But..."
sleep 3

#sets red to figlet and states fatality
RED='\e[1;91m'
WHITE='\e[37m'
printf ${RED}
#WSL cannot play audio, but if you would like to play audio, then uncomment the line below
#python3 Audio.py "Audio/AirHorn.py"
figlet "FATALITY"
sleep 3
printf ${WHITE}

#_____dya trash talks user because she wins easily
echo "_____: HARRRRRRHARRRRHARRRR, U LOST U NOOBY NOOBY SCOOBY DOOBY, GO WORK ON LINUX"
sleep 3
echo "So you run away..."
sleep 3
sl
sleep 3
echo "Vowing Revenge ..."

#thanks user for playing
sleep 4
figlet "THANK YOU FOR PLAYING!"
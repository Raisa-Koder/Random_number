#!/bin/bash

#Random number generator
NUMBER=$(( RANDOM % 1000 + 1 ))
GUSSES=0

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#Welcome the user 
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM players WHERE username='$USERNAME'")

#If the user is new
if [[ -z $USER_ID ]]
then
  INSER_INTO=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM players WHERE username=('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
#If the user is old
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM game_info WHERE user_id=$USER_ID GROUP BY user_id")
  BEST_GAME=$($PSQL "SELECT MIN(gusses) FROM game_info WHERE user_id=$USER_ID")
  NAME=$($PSQL "SELECT username FROM players WHERE user_id=$USER_ID")
  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#Guess loop
GUESS_LOOP() {
  read INPUT
  if [[ -z $1 ]]
  then 
    GUSSES=$1
  fi
  ((GUSSES++))
  if [[ $INPUT =~ ^[0-9][0-9]*$ ]]
  then
    if [[ $INPUT == $NUMBER ]]
    then
      INSERT_INTO_GAME_INFO_SCORE=$($PSQL "INSERT INTO game_info(user_id,gusses) VALUES($USER_ID,$GUSSES)") 
      echo "You guessed it in $GUSSES tries. The secret number was $NUMBER. Nice job!"
    else
      if (( $INPUT > $NUMBER ))
      then
        echo "It's lower than that, guess again:"
        GUESS_LOOP $GUSSES
      else
        echo "It's higher than that, guess again:"
        GUESS_LOOP $GUSSES
      fi
    fi
  else
    echo "That is not an integer, guess again:"
    GUESS_LOOP
  fi
}

#User guessing number
echo -e "\nGuess the secret number between 1 and 1000:"
GUESS_LOOP

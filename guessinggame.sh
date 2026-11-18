#!/bin/bash
# Guessing Game

function get_file_count {
  local count=$(ls -l | wc -l)
  echo $count
}

correct=$(get_file_count)
guess=-1

echo "Bienvenue dans le jeu de devinette !"
echo "Devinez combien de fichiers se trouvent dans le repertoire actuel."

while [[ $guess -ne $correct ]]
do
  echo -n "Entrez votre estimation : "
  read guess

  if [[ $guess -lt $correct ]]
  then
    echo "Trop bas ! Essayez de nouveau."
  elif [[ $guess -gt $correct ]]
  then
    echo "Trop haut ! Essayez de nouveau."
  else
    echo "Felicitations ! Vous avez devine le bon nombre : $correct"
  fi
done

echo "Merci d'avoir joue !"
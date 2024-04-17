#!/bin/bash

# Pobranie aktualnej daty
aktualna_data=$(date +"%Y-%m-%d_%H-%M-%S")

# Nazwa pliku z wynikami
nazwa_pliku="PLIK_${USER}_${aktualna_data}.txt"

# Wykonanie skryptu pierdolnik1.sh i przekierowanie jego wyniku do pliku wynikowego
/home/kuba/1/pierdolnik1.sh > "/home/$USER/1/$nazwa_pliku"

# Przeniesienie pliku wynikowego do katalogu repozytorium
mv "/home/$USER/1/$nazwa_pliku" "/home/$USER/chuj1/"

# Przejście do katalogu repozytorium
cd "/home/$USER/chuj1/"


# Przywrócenie pliku pierdolnik2.sh z poprzedniego commita
git checkout HEAD^ -- pierdolnik2.sh


# Schowanie lokalnych zmian
git stash

# Pobranie ewentualnych zmian z GitHuba
git pull origin main

# Dodanie pliku wynikowego do listy plików do zacommitowania
git add "$nazwa_pliku"


# Dodanie pliku pierdolnik2.sh do listy plików do zacommitowania
git add "pierdolnik2.sh"



# Zatwierdzenie zmian
git commit -m "Nowy raport: $nazwa_pliku"

# Wysłanie zmian na GitHuba
git push origin main

# Przywrócenie schowanych zmian
git stash pop

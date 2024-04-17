#!/bin/bash

# Wykonanie skryptu pierdolnik1.sh
/home/kuba/1/pierdolnik1.sh

# Pobranie aktualnej daty
aktualna_data=$(date +"%Y-%m-%d_%H-%M-%S")

# Nazwa pliku z wynikami
nazwa_pliku="PLIK_${USER}_${aktualna_data}.txt"

# Przeniesienie pliku wynikowego do katalogu repozytorium
mv "/home/$USER/1/PLIK_${USER}_$aktualna_data" "/home/$USER/chuj1/$nazwa_pliku"

# Dodanie i wysłanie zmian do GitHuba
cd "/home/$USER/chuj1/" && git add . && git commit -m "Nowy raport" && git push origin main

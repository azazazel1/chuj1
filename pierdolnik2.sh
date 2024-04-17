#!/bin/bash

# Zmienne
sciezka="/home/kuba/chuj1/"  # Ścieżka do katalogu repozytorium

# Wykonanie skryptu pierdolnik1.sh
/home/kuba/1/pierdolnik1.sh

# Pobranie aktualnej daty
aktualna_data=$(date +"%Y-%m-%d_%H-%M-%S")

# Nazwa pliku z wynikami
nazwa_pliku="PLIK_${USER}_${aktualna_data}.txt"

# Przeniesienie pliku wynikowego do katalogu repozytorium
mv "/home/$USER/1/PLIK_${USER}_$aktualna_data" "$sciezka$nazwa_pliku"

# Dodanie i wysłanie zmian do GitHuba
cd "$sciezka" && git add . && git commit -m "Nowy raport" && git push origin main

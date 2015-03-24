#/bin/sh

# play some games
python twogtp.py --white '/usr/games/gnugo --mode gtp' --black '/usr/games/gnugo --mode gtp' --verbose 1 --sgfbase game --games 1000

# replay player names
sed -i 's/PW.*/PW[Player One]PB[Player Two]/g' *.sgf

# create pdf output
ls *.sgf | xargs -ifn sgf2dg -converter PDF -i fn


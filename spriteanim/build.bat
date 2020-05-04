rgbasm -o main.o main.z80
rgblink -o spriteanim.gb main.o
rgbfix  -v -p 0 spriteanim.gb
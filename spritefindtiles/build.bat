rgbasm -o main.o main.z80
rgblink -o spritefindtiles.gb main.o
rgbfix  -v -p 0 spritefindtiles.gb
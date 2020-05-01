rgbasm -o main.o main.z80
rgblink -o sprite.gb main.o
rgbfix  -v -p 0 sprite.gb
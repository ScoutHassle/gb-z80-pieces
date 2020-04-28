rgbasm -o main.o main.asm
rgblink -o sprite.gb main.o
rgbfix  -v -p 0 sprite.gb
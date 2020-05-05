rgbasm -o main.o main.z80
rgblink -o input.gb main.o
rgbfix  -v -p 0 input.gb
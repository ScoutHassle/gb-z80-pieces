rgbasm -o main.o main.z80
rgblink -o platform.gb main.o
rgbfix  -v -p 0 platform.gb
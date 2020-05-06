rgbasm -o main.o main.z80
rgblink -o tilemapsinglescreen.gb main.o
rgbfix  -v -p 0 tilemapsinglescreen.gb
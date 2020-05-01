rgbasm -o main.o main.z80
rgblink -o scroll.gb main.o
rgbfix  -v -p 0 scroll.gb
rgbasm -o main.o main.z80
rgblink -o tilemap.gb main.o
rgbfix  -v -p 0 tilemap.gb
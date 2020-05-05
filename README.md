# gb
This is a monorepository of little tasks I've completed in learning GBz80 ASM for GameBoy development.

Current Projects:
- Hello World
- Tilemaps
- Scrolling tilemaps
- Sprite
- Sprite Animations
- Inputs

TODO:
- Sprite movement
- Conditions
- Background update/changing

---
## Documentation

Here's a few how to's that should translate z80 assembly to a more generalised game dev. This is an attempt to take a C style coder through assembly.

It is assumed that for this you're using RGBDS for building. There are a couple of nuiances such as `SECTION` headers that are from that kit.

### Variable Declaration
---

C:
```c
// Top of file, so this is global.
int x;
```

z80:
```asm
SECTION "VARIABLE_SECTION_NAME", WRAM0
XVar:: DS 1 ; Allocate a byte for x.
```

### Variable Assignment
---

C:
```c
int main()
{
    x = 5;
}
```

z80:
```asm
SECTION "LOGIC_SECTION_NAME", ROM0
main:
    ld hl, XVar ; Load into hl register
    ld [hl], 5 ; Assign value to XVar
```


### Variable addition
---
C:
```c
int main()
{
    x = x + 5;
}
```

z80:
```asm
SECTION "LOGIC_SECTION_NAME", ROM0
main:
    ld hl, XVar ; Load into hl
	ld a, [hl] ; Set a to value
	adc a, 5 ; Add 5
	ld [hl], a ; Assign back to XVar
```
---
## Tools:
RGBDS - Compiler
https://rednex.github.io/rgbds/

BGB - Emulator
http://bgb.bircd.org/

Gameboy Tile Designer - Art
http://www.devrs.com/gb/hmgd/gbtd.html

Gameboy Map Builder - Art
http://www.devrs.com/gb/hmgd/gbmb.html

---
## Sources:
https://github.com/assemblydigest/gameboy/blob/master/part-3-libraries/memory.z80
https://invisibleup.neocities.org/articles/18/
https://www.chibiakumas.com/z80/Gameboy.php
http://marc.rawer.de/Gameboy/Docs/GBCPUman.pdf
http://www.z80.info/z80syntx.htm#SLA
https://gist.github.com/neuro-sys/0d08b1af7fd033193d06
http://voidptr.io/blog/2017/01/21/GameBoy.html
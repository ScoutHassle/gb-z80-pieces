INCLUDE "hardware.inc"

SECTION "Header", ROM0[$100]

EntryPoint: ; Execution begins
    di ; Disable interrupts.
    jp Start ;

REPT $150 - $104
    db 0
endr

SECTION "Game code", rom0

Start:
    ; Turn off the LCD
.waitVBlank
    ld a, [rLY]
    cp 144 ; Check if we are past VBlank
    jr c, .waitVBlank

    xor a ; AKA ld a, 0
    ld [rLCDC], a

    ; Load in our font
    ld hl, $9000
    ld de, FontTiles
    ld bc, FontTilesEnd - FontTiles

.copyFont
    ld a, [de] ; Grab 1 byte from source
    ld [hli], a ; Place at dest, increment hli
    inc de ; Next byte
    dec bc ; Dec count
    ld a, b ; Check if count is 0 as dec bc doesn't update the flag register
    or c
    jr nz, .copyFont

    ld hl, $9800 ; Step to this point in memory
    ld de, HelloWorldStr

.copyString
    ld a, [de]
    ld [hli], a
    inc de
    and a ; Check if we've just copied 0 byte
    jr nz, .copyString ; Continue

    ; Init display registers
    ld a, %11100100
    ld [rBGP], a

    xor a ; ld a, 0
    ld [rSCY], a
    ld [rSCX], a

    ; Shut downthe sound
    ld [rNR52], a

    ; And turn the screen back on
    ld a, %10000001
    ld [rLCDC], a

    ; Lock up in an infinite loop to stop the CPU running off
.lockup
    jr .lockup

SECTION "Font", rom0

FontTiles:
INCBIN "font.chr"
FontTilesEnd:

SECTION "Hello World String", rom0

HelloWorldStr:
    db "Oh snap Dan. This is real!", 0
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


.lock
	jr .lock
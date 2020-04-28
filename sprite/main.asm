INCLUDE "hardware.inc"

SECTION "Header", ROM0[$100]

EntryPoint: ; Execution begins
    di ; Disable interrupts.
    jp Start ;

REPT $150 - $104
    db 0
endr

SECTION "Game code", rom0

INCLUDE "sheet.inc"

Start:
    ; Turn off the LCD
.waitVBlank
    ld a, [rLY]
    cp 144 ; Check if we are past VBlank
    jr c, .waitVBlank

    xor a ; AKA ld a, 0
    ld [rLCDC], a

	call loadimage
	call initdisplay

.lock
	jr .lock

initdisplay::
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
	ret

loadimage::
	ld hl, $9000 ; Writing to
	ld de, (sheet_tile_data + $0800) ; source daa
	ld bc, (sheet_tile_data_size - $0800) ; size of write
	call .memcpy
	ret

	; blocksize = bc
	; source = de
	; destination = hl
.memcpy:
    ld a, [de] ; Grab 1 byte from source
    ld [hli], a ; Place at dest, increment hli
    inc de ; Next byte
    dec bc ; Dec count
    ld a, b ; Check if count is 0 as dec bc doesn't update the flag register
    or c
    jr nz, .memcpy
	ret
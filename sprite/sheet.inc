; ///////////////////////
; //                   //
; //  File Attributes  //
; //                   //
; ///////////////////////

; Filename: sheet.png
; Pixel Width: 32px
; Pixel Height: 32px

; /////////////////
; //             //
; //  Constants  //
; //             //
; /////////////////

sheet_tile_map_size EQU $10
sheet_tile_map_width EQU $04
sheet_tile_map_height EQU $04

sheet_tile_data_size EQU $D0
sheet_tile_count EQU $0D

; ////////////////
; //            //
; //  Map Data  //
; //            //
; ////////////////

sheet_map_data:
DB $00,$01,$02,$00,$00,$03,$04,$00,$05,$06,$07,$08,$09,$0A,$0B,$0C

; /////////////////
; //             //
; //  Tile Data  //
; //             //
; /////////////////

sheet_tile_data:
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C0,$FF,$C0,$FF,$C0,$FF,$C0
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$01,$FF,$01,$FF,$01,$FF,$01
DB $FF,$C0,$FF,$C0,$FF,$C0,$FF,$C0,$FF,$C0,$FF,$C0,$FF,$FF,$FF,$FF
DB $FF,$01,$FF,$01,$FF,$01,$FF,$01,$FF,$01,$FF,$01,$FF,$FF,$FF,$FF
DB $FF,$FF,$FF,$FF,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8
DB $FF,$FF,$FF,$FF,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
DB $FF,$FF,$FF,$FF,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
DB $FF,$FF,$FF,$FF,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
DB $F8,$F8,$F8,$F8,$F8,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $01,$01,$01,$01,$01,$01,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $C0,$C0,$C0,$C0,$C0,$C0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $07,$07,$07,$07,$07,$07,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

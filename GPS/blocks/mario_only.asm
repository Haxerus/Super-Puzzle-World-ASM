print "Only Mario can pass through"
db $42
JMP MarioBelow : JMP MarioAbove : JMP MarioSide : JMP SpriteV : JMP SpriteH : JMP return : JMP return
JMP Corners : JMP HeadInside : JMP BodyInside

MarioAbove:
MarioBelow:
MarioSide:
Corners:
HeadInside:
BodyInside:
    LDA #$00
	CMP $1470
	BNE Solid
    RTL
SpriteV:
SpriteH:
    JMP Solid
    RTL
Solid:
    LDY #$01
    LDA #$30
    STA $1693
return:
    RTL
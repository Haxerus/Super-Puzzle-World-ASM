print "You need to be small mario to pass through"
db $42
JMP MarioBelow : JMP MarioAbove : JMP MarioSide : JMP return : JMP return : JMP return : JMP return
JMP Corners : JMP HeadInside : JMP BodyInside

MarioAbove:
MarioBelow:
MarioSide:
Corners:
HeadInside:
BodyInside:
    LDA #$00
    CMP $0019
    BNE Solid
    RTL
Solid:
    LDY #$01
    LDA #$30
    STA $1693
return:
    RTL
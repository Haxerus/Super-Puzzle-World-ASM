print "Only solid when switch is off"
db $42
JMP MarioBelow : JMP MarioAbove : JMP MarioSide : JMP SpriteV : JMP SpriteH : JMP return : JMP FireBall
JMP Corners : JMP HeadInside : JMP BodyInside

MarioAbove:
MarioBelow:
MarioSide:
SpriteV:
SpriteH:
FireBall:
Corners:
HeadInside:
BodyInside:
    LDA $14AF
    BNE Solid
    RTL
Solid:
    LDY #$01
    LDA #$30
    STA $1693
return:
    RTL
print "You need coins coins to pass through"
db $42
JMP MarioBelow : JMP MarioAbove : JMP MarioSide : JMP return : JMP return : JMP return : JMP return
JMP Corners : JMP HeadInside : JMP BodyInside

MarioAbove:
MarioBelow:
MarioSide:
Corners:
HeadInside:
BodyInside:
    LDA $0DD4
    CMP $0DBF
	BPL Solid
    RTL
Solid:
    LDY #$01
    LDA #$30
    STA $1693
return:
    RTL
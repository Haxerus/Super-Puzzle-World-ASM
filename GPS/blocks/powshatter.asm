db $42

JMP MarioBelow : JMP MarioAbove : JMP MarioSide : JMP SpriteV : JMP SpriteH : JMP MarioCape : JMP MarioFireball : JMP TopCorner : JMP BodyInside : JMP HeadInside

print "Acts like a POW block from SMB2 then shatters"

MarioBelow:
MarioAbove:
MarioSide:
TopCorner:
HeadInside:
BodyInside:
JSL $0294C1
%shatter_block()
SpriteV:
SpriteH:
MarioCape:
MarioFireball:
RTL

;If anything tries to go through the block going up, it will block it,
;otherwise it will let them pass.
;behaves $25

print "Solid if anything goes up"
db $42
JMP MarioBelow : JMP return : JMP return : JMP SpriteV : JMP return : JMP return
JMP MarioFireBall : JMP return : JMP return : JMP return

MarioBelow:
	LDA $7D			;\so if you stack this one-way down block,
	BMI solid		;/wouldn't make mario zip downwards very fast.
	RTL
SpriteV:
	LDA $AA,x
	BMI solid
	RTL
MarioFireBall:
	LDA $173D,x
	BPL return
solid:
	LDY #$01		;\become solid
	LDA #$30		;|
	STA $1693		;/
return:
	RTL
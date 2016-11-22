print "Sets lives to 99"
db $42
JMP MarioBelow : JMP return : JMP return : JMP return : JMP return : JMP return : JMP return
JMP return : JMP return : JMP return

MarioBelow:
    LDA #$62
    STA $0DBE
    LDA #$05
    STA $1DFC
    RTL
return:
RTL
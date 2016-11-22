; Runs on level load
 
INIT:
    JSL Coin_Gate_Count
    JSL Clear_Coins
    JSL Reset_Lives
    RTL
    
; Called every frame

MAIN:
    LDA $0DD4
    CMP $0DBF
    BMI TriggerSet_00
    RTL
    
; Sets flag for custom trigger 0

TriggerSet_00:
    REP #$20
    LDA $7FC0FC
    ORA #$0001
    STA $7FC0FC
    SEP #$20
    RTL
    
; Resets animation flag

TriggerReset_00:
    REP #$20
    LDA $7FC0FC
    AND #$FFFE
    STA $7FC0FC
    SEP #$20
    RTL

; Sets coins required to pass through a gate
 
Coin_Gate_Count:
    LDA #$06 ; number of coins required to pass through a coin gate, in hex
    STA $0DD4
    RTL

; Clears Mario's coin count when he enters the level

Clear_Coins:
    LDA #$00
    STA $0DBF
    RTL

; Sets the player's life count
 
Reset_Lives:
    LDA #$62 ; the number of lives, in hex
    STA $0DBE
    RTL

; Removes the player's powerup status

Reset_Powerup:
    LDA #$00
    STA $0019  ; player powerup state
    STA $0DC2 ; player stored powerup
    RTL
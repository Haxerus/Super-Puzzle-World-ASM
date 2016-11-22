; Runs on level load
 
 INIT:
	JSL Coin_Gate_Count
	JSL Clear_Coins
	JSL Reset_Lives
	RTL

; Sets coins required to pass through a gate
 
 Coin_Gate_Count:
	LDA #$0A ; number of coins required to pass through a coin gate, in hex
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
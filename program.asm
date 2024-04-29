asect 0xf3
lowerBitCounter:
asect 0xf4
upperBitCounter:
asect 0xf5
delayerBit:
asect 0x00
start:
ldi r0, lowerBitCounter
ldi r2, upperBitCounter
ldi r3, 64
counter:
	do
		ldc r1, r0
		inc r1
		st r0, r1
		tst r1
	until mi
	ldi r1, 0
	st r0, r1	
	ldc r2, r3
	inc r3
	st r2, r3
	br counter
end
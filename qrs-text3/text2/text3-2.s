	AREA SORT,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		MOV R0,#7
		LDR R2,=0X40000000
		MOV R9,#1
		STR R9,[R2]
		MOV R9,#5
		STR R9,[R2,4]
		MOV R9,#8
		STR R9,[R2,8]
		MOV R9,#7
		STR R9,[R2,12]
		MOV R9,#12
		STR R9,[R2,16]
		MOV R9,#15
		STR R9,[R2,20]
		MOV R9,#18
		STR R9,[R2,24]
		SUB R1,R0,#1
		MOV R4,#4
		MLA R3,R1,R4,R2
		SUB R4,R3,#4
LOOP1	ADD R5,R2,#4
LOOP2	LDR R6,[R2]
		LDR R7,[R5]
		CMP R6,R7
		STRHI R6,[R5]
		STRHI R7,[R2]
		ADD R5,R5,#4
		CMP R5,R3
		BLS LOOP2
		ADD R2,R2,#4
		CMP R2,R4
		BLS LOOP1
		LDR R2,=0X40000000
		MOV R0,R0,LSR #1
		MOV R4,#4
		MLA R3,R0,R4,R2
		LDR R1,[R3]
		MOV R0,#100
		END


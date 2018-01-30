				TTL PA2-Nghia Ho-PART3
				AREA PART3A,DATA,READONLY
				EXPORT __Vectors
		
__Vectors		DCD 0x20002000
				DCD Reset_Handler
A				DCD 7,6,5		;Initialize array with given element	
S				DCD 2					;where sum is stored
				AREA PART3B,DATA,READWRITE
R				DCD 0	
				AREA PART3C,CODE,READONLY
				ENTRY
				EXPORT Reset_Handler
	
Reset_Handler	
				LDR R0,=A				;R0=address of A				
				LDR R1,=S
				LDR R2,=R				;R1<-0
										;R1=0
										;R1=i
				LDR R3,[R1]
CASE0			CMP R3,#0
				BNE CASE1
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				ADD R4,R4,R5
				STR R4,[R2]
				B BREAK
CASE1			CMP R3,#1
				BNE CASE2
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				SUB R4,R4,R5
				STR R4,[R2]
				B BREAK
CASE2			CMP R3,#2
				BNE CASE3
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				MUL R4,R4,R5
				STR R4,[R2]
				B BREAK
CASE3			CMP R3,#3
				BNE DEFAULT
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				LDR R6,[R0,#8]
				MUL R5,R5,R6
				ADD R4,R4,R5
				STR R4,[R2]
				B BREAK
DEFAULT			MOV R4,#0
				STR R4,[R2] 

BREAK			
				END



//////////////////////////////////////////////////////////////////////////
/*				TTL PA2-Nghia Ho-PART2
				AREA PART2A,DATA,READONLY
				EXPORT __Vectors
		
__Vectors		DCD 0x20002000
				DCD Reset_Handler
A				DCD 7,6,4,5,5,1,3,2,9,8	;Initialize array with given element	
				AREA PART2B,DATA,READWRITE
S				DCD 0					;where sum is stored			
				AREA PART2C,CODE,READONLY
				ENTRY
				EXPORT Reset_Handler
	
Reset_Handler	
				LDR R0,=A				;R0=address of A				
				LDR R2,=S
				MOV R1,#0				;R1<-0
										;R1=0
										;R1=i
loop
				CMP R1,#10				;Compare R1 and R3 by substrating R3 from R1
				BEQ EXIT				;Branch to Exit if CMP equal 0
										;End loop when R2 reach 100	
				LDR R3,[R0,R1,LSL #2]
				LDR R4,[R2]
				ADD R4,R4,R3			;R2<-R1*R3
				STR R4,[R2]

										;R2=R1*R2
				ADD R1,R1,#1			;R1<-R1*1
										;R1=R1*1
										;Increase index by one
				B loop					;Branch back to loop

			
EXIT
				END						;End program

*/
//////////////////////////////////////////////////////////////////////////
/*				
				TTL PA2-Nghia Ho-PART3
				AREA PART3A,DATA,READONLY
				EXPORT __Vectors
		
__Vectors		DCD 0x20002000
				DCD Reset_Handler
A				DCD 7,6,5		;Initialize array with given element	
S				DCD 2					;where sum is stored
				AREA PART3B,DATA,READWRITE
R				DCD 0	
				AREA PART3C,CODE,READONLY
				ENTRY
				EXPORT Reset_Handler
	
Reset_Handler	
				LDR R0,=A				;R0=address of A				
				LDR R1,=S
				LDR R2,=R				;R1<-0
										;R1=0
										;R1=i
				LDR R3,[R1]
CASE0			CMP R3,#0
				BNE CASE1
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				ADD R4,R4,R5
				STR R4,[R2]
				B BREAK
CASE1			CMP R3,#1
				BNE CASE2
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				SUB R4,R4,R5
				STR R4,[R2]
				B BREAK
CASE2			CMP R3,#2
				BNE CASE3
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				MUL R4,R4,R5
				STR R4,[R2]
				B BREAK
CASE3			CMP R3,#3
				BNE DEFAULT
				LDR R4,[R0,#0]
				LDR R5,[R0,#4]
				LDR R6,[R0,#8]
				MUL R5,R5,R6
				ADD R4,R4,R5
				STR R4,[R2]
				B BREAK
DEFAULT			MOV R4,#0
				STR R4,[R2] 

BREAK			
				END

*/
//////////////////////////////////////////////////////////////////////////
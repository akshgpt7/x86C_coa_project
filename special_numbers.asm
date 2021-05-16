global findsquare


findsquare:
	push ebp	;creating stack prologue
	mov ebp, esp	
	mov eax, [ebp + 8] ;moving argument taken to eax
	mul eax		;finding square of value at register eax
  ;the mul operation in x86 by default multiplies the argument to the value in eax
	mov esp, ebp ;restoring the stack
	pop ebp
	ret

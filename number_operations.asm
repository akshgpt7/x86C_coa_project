global sqroot, findsquare, paritycheck, twotopower, add_nums, sub_nums, mul_nums, div_nums


sqroot:
  push ebp	;creating stack prologue
  mov ebp, esp
  mov eax, 1	;intitialised eax and ecx to 1
  mov ecx, 1
loop:	
  mov eax, ecx	; move eax to ecx
  mul eax		; finding square of eax
  inc ecx		; increment ecx
  cmp [ebp + 8], eax	; comparing this square with input
  jz skip		; if true, go to skip label and return answer
  jnz loop	; if false, continue the loop with the next number
skip:	
  dec ecx
  mov eax, ecx ; restoring the stack
  mov esp, ebp
  pop ebp
  ret


findsquare:
  push ebp	; creating stack prologue
  mov ebp, esp	
  mov eax, [ebp + 8] ; moving argument passed to eax
  mul eax		; finding square of value at register eax
  ; the mul operation in x86 by default multiplies the argument to the value in eax
  mov esp, ebp ; restoring the stack
  pop ebp
  ret


paritycheck:
  push ebp	; creating stack prologue
  mov ebp, esp	
  mov eax, [ebp + 8] ; moving argument passed to eax
  mov ecx, 2	; number will be divided by 2
  div ecx		; divides eax by 2
  mov eax, edx ; store the remainder of the division in eax
  mov esp, ebp
  pop ebp
  ret


twotopower:
  push ebp	; creating stack prologue
  mov ebp, esp	
  mov ecx, [ebp + 8] ; moving argument passed to ecx
  mov eax, 1
label:
  add eax, eax
  dec ecx
  cmp ecx, 0
  jg label
  mov esp, ebp
  pop ebp
  ret


add_nums:
  push ebp	; creating stack prologue
  mov ebp, esp	
  mov eax, [ebp + 8] ; moving argument passed to eax
  add eax, [ebp + 12] ; adding the two numbers
  mov esp, ebp
  pop ebp
  ret


sub_nums:
  push ebp	; creating stack prologue
  mov ebp, esp	
  mov eax, [ebp + 8] ; moving argument taken to eax
  sub eax, [ebp + 12] ; subtracting the two numbers
  mov esp, ebp
  pop ebp
  ret


mul_nums:
  push ebp	; creating stack prologue
  mov ebp, esp	
  mov eax, [ebp + 8] ; moving argument passed to eax
  mul dword [ebp + 12] ; multiplying the 2nd arg to eax (first arg)
  mov esp, ebp
  pop ebp
  ret


div_nums:
  push ebp	;creating stack prologue
  mov ebp, esp	
  mov eax, [ebp + 8] ;moving argument taken to ecx
  mov ecx, [ebp + 12]
  div ecx ; dividing the 2nd arg with eax (first arg)
  mov esp, ebp
  pop ebp
  ret



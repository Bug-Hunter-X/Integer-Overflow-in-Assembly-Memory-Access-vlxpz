cmp ecx, 0x7FFFFFFF ; Check for potential overflow
jge overflow_handler ; Jump to handler if overflow is detected
mov eax, [ebx+ecx*4] ; Safe memory access
jmp end

overflow_handler:
; Handle the overflow condition appropriately, e.g., return an error code or use a different memory access method.
mov eax, -1 ; Indicate an error
end:
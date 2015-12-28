global _ft_strchr
extern _ft_strlen

;char	*ft_strchr(const char *c, int c)

_ft_strchr:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	mov rbx, rdi
	push rsi
	call _ft_strlen
	mov rcx, rax
	pop rax
	mov rdi, rbx
	repne scasb
	or rcx, rcx
	jz .no_found
	mov rax, rbx
	add rax, rcx
	.end:
		leave
		ret
	.no_found:
		mov rax, 0
		jmp .end
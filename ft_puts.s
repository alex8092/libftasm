global _ft_puts
extern _ft_putstr
extern _write
extern _ft_strlen

; int	ft_puts(const char *s);

_ft_puts:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	call _ft_putstr
	cmp rax, 0
	jnge .end
	mov rsi, .newline
	mov rdi, 1
	mov rdx, 1
	call _write
	.end:
		leave
		ret
	.newline:
		db 10
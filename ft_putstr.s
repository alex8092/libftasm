global _ft_putstr
extern _write
extern _ft_strlen

; int	ft_putstr(const char *s);

_ft_putstr:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	mov rbx, rdi
	call _ft_strlen
	mov rdx, rax
	mov rdi, 1
	mov rsi, rbx
	call _write
	leave
	ret
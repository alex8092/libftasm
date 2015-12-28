global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

; int	ft_isalnum(int c)

_ft_isalnum:
	call _ft_isalpha
	or rax, rax
	jnz .end
	call _ft_isdigit
	.end:
		ret
#include <stdio.h>
#include <stdlib.h>

extern void	ft_bzero(void *s, size_t len);
extern char *ft_strcat(char *dest, const char *src);
extern int	ft_isalpha(int c);
extern int	ft_isdigit(int c);
extern int	ft_isalnum(int c);
extern int	ft_isascii(int c);

int	main(void)
{
	char	str[] = "bonjour";
	int		i;
	ft_bzero(str, sizeof(str) - 1);
	ft_strcat(str, "test");
	ft_strcat(str, "2");
	for (i = 0; i < sizeof(str) - 1; ++i) {
		printf("str[%d]: '%c' - isalpha: %d - isdigit: %d - isalnum: %d - isascii: %d\n", i, str[i], ft_isalpha(str[i]), ft_isdigit(str[i]), ft_isalnum(str[i]), ft_isascii(str[i]));
	}
	return (0);
}
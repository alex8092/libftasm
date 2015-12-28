#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

extern void	_ft_bzero(void *s, size_t len);
extern char *_ft_strcat(char *dest, const char *src);
extern int	_ft_isalpha(int c);
extern int	_ft_isdigit(int c);
extern int	_ft_isalnum(int c);
extern int	_ft_isascii(int c);
extern int 	_ft_isprint(int c);
extern int	_ft_toupper(int c);
extern int 	_ft_tolower(int c);
extern int	_ft_puts(const char *s);
extern int	_ft_strlen(const char *s);
extern void	*_ft_memset(void *s, int c, size_t n);
extern void	*_ft_memcpy(void *dest, const void *src, size_t n);
extern char *_ft_strdup(const char *s);
extern void	ft_cat(int fd);

void	check(const char *name, int i, int (*f)(int), int (*f2)(int), int print_char)
{
	if (f(i) > 0 && f2(i) <= 0)
	{
		printf("[%s] - failure on (%d) - f(%d), f2(%d)", name, i, f(i), f2(i));
		if (print_char)
			printf(" -> char[%c]\n", i);
		else
			printf("\n");
	}
}

int		main(int ac, char **av)
{
	char		str[] = "bonjour";
	int			i;
	struct stat	*st;
	_ft_bzero(str, sizeof(str) - 1);
	printf("str(%s)\n", _ft_strcat(str, "test"));
	printf("str(%s)\n", _ft_strcat(str, "2"));
	for (i = 0; i < sizeof(str) - 1; ++i) {
		printf("str[%d]: '%c' - isalpha: %d - isdigit: %d - isalnum: %d - isascii: %d\n", i, str[i], _ft_isalpha(str[i]), _ft_isdigit(str[i]), _ft_isalnum(str[i]), _ft_isascii(str[i]));
	}
	for (i = 0; i < 256; ++i)
	{
		check("isaplha", i, isalpha, _ft_isalpha, 1);
		check("isdigit", i, isdigit, _ft_isdigit, 1);
		check("isalnum", i, isalnum, _ft_isalnum, 1);
		check("isascii", i, isascii, _ft_isascii, 1);
		check("isprint", i, isprint, _ft_isprint, 1);
		check("toupper", i, toupper, _ft_toupper, 1);
		check("tolower", i, tolower, _ft_tolower, 1);
	}
	int ret = _ft_puts("test");
	if (ret < 0)
		perror("puts");
	printf("strlen(%zu)\n", _ft_strlen("test"));
	char	str2[6];
	str2[5] = 0;
	printf("memset(%s)\n", (char *)_ft_memset(str2, 't', 5));
	char	str3[6];
	printf("memcpy(%s)\n", (char *)_ft_memcpy(str3, str2, 6));
	char	*dup;
	dup = _ft_strdup(str3);
	printf("strdup(%p - %s, %p)\n", dup, dup, str3);
	free(dup);

	for (i = 1; i < ac; ++i)
	{
		if (!access(av[i], F_OK | R_OK))
		{
			printf("##start cat [%s]\n", av[i]);
			int fd = open(av[i], O_RDONLY);
			if (fd == -1)
				printf("##open error\n");
			else
			{
				_ft_cat(fd);
				close(fd);
			}
			printf("\n\n");
		}
	}
	return (0);
}
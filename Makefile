C = gcc
ASM = nasm
LD = ar

CFLAGS = -Wall -Wextra -Werror
LDFLAGS = rc
ASMFLAGS = -f macho64

SRCS_C = 	main.c
SRCS_ASM = 	ft_bzero.s \
			ft_strcat.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_toupper.s \
			ft_tolower.s \
			ft_puts.s \
			ft_putstr.s \
			ft_strlen.s \
			ft_memset.s \
			ft_memcpy.s \
			ft_strdup.s \
			ft_cat.s \
			ft_strchr.s

OBJS = $(SRCS_C:.c=.o) $(SRCS_ASM:.s=.o)

NAME = libfts.a

all: $(NAME)

$(NAME): $(OBJS)
	$(LD) $(LDFLAGS) $@ $^

%.o: %.s
	$(ASM) $(ASMFLAGS) $<

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f a.out

test: all main.c
	$(CC) $(CFLAGS) main.c libfts.a

re: fclean all

.PHONY: all clean fclean re test
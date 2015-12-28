C = gcc
ASM = nasm

CFLAGS =
ASMFLAGS = -f elf64 -g3

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
			ft_strlen.s \
			ft_memset.s \
			ft_memcpy.s \
			ft_strdup.s \
			ft_cat.s

OBJS = $(SRCS_C:.c=.o) $(SRCS_ASM:.s=.o)

NAME = libfts

all: $(NAME)

$(NAME): $(OBJS)
	$(C) -o $@ $^

%.o: %.c
	$(C) -o $@ -c $< $(CFLAGS) -g3

%.o: %.s
	$(ASM) $(ASMFLAGS) $<

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

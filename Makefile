C = gcc
ASM = nasm

CFLAGS =
ASMFLAGS = -f macho64

SRCS_C = 	main.c
SRCS_ASM = 	ft_bzero.s \
			ft_strcat.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isalnum.s \
			ft_isascii.s

OBJS = $(SRCS_C:.c=.o) $(SRCS_ASM:.s=.o)

NAME = libfts

all: $(NAME)

$(NAME): $(OBJS)
	$(C) -o $@ $^

%.o: %.c
	$(C) -o $@ -c $< $(CFLAGS)

%.o: %.s
	$(ASM) $(ASMFLAGS) $<

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
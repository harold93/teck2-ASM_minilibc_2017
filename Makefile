##
## EPITECH PROJECT, 2018
## 
## File description:
## 
##

CC		= ld

CFLAGS		= -fPIC -shared

AS		= nasm

ASFLAGS		= -f elf64

RM		= rm -f

NAME		= libasm.so

DIR	= src/

SRCS	=	$(DIR)strlen.asm	\
		$(DIR)strchr.asm	\
		$(DIR)strcmp.asm	\
		$(DIR)strncmp.asm	\
		$(DIR)strstr.asm	\
		$(DIR)memset.asm	\
		$(DIR)memcpy.asm	\
		$(DIR)memmove.asm	\
		$(DIR)strcasecmp.asm	\
		$(DIR)rindex.asm	\
		$(DIR)strpbrk.asm	\
		$(DIR)strcspn.asm

OBJS		= $(SRCS:.asm=.o)


all: $(NAME)

$(NAME): $(OBJS)
	 $(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re

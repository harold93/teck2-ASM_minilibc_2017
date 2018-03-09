##
## EPITECH PROJECT, 2018
## 
## File description:
## 
##

NAME	= libasm.so

# NASM	= nasm

CC	= gcc

RM	= rm -f

DIR	= src/

SRCS	=	$(DIR)strlen.asm	\
		$(DIR)strchr.asm

OBJS	= $(SRCS:.asm=.o)

# CFLAGS = -I 
# CFLAGS += -felf64

all: $(NAME)

$(NAME): strlen.o strchr.o
	$(CC) $(DIR)strlen.o $(DIR)strchr.o -fPIC -shared -o $(NAME)

strlen.o: $(DIR)strlen.asm
	nasm -felf64 -F dwarf -g $(DIR)strlen.asm

strchr.o: $(DIR)strchr.asm
	nasm -felf64 -F dwarf -g $(DIR)strchr.asm

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

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
		$(DIR)strchr.asm	\
		$(DIR)strcmp.asm	\
		$(DIR)strncmp.asm	\
		$(DIR)strstr.asm	\
		$(DIR)memset.asm	\
		$(DIR)memcpy.asm	\
		$(DIR)memmove.asm	\
		$(DIR)strcasecmp.asm	\
		$(DIR)rindex.asm	\
		$(DIR)strpbrk.asm

OBJS	= $(SRCS:.asm=.o)

# CFLAGS = -I 
# CFLAGS += -felf64

all: $(NAME)

$(NAME): strlen.o strchr.o strcmp.o strncmp.o strstr.o memset.o memcpy.o memmove.o strcasecmp.o rindex.o strpbrk.o
	$(CC) $(DIR)strlen.o $(DIR)strchr.o $(DIR)strcmp.o $(DIR)strncmp.o $(DIR)strstr.o $(DIR)memset.o $(DIR)memcpy.o $(DIR)memmove.o $(DIR)strcasecmp.o $(DIR)rindex.o $(DIR)strpbrk.o -fPIC -shared -o $(NAME)

strpbrk.o: $(DIR)strpbrk.asm
	nasm -felf64 -F dwarf -g $(DIR)strpbrk.asm

rindex.o: $(DIR)rindex.asm
	nasm -felf64 -F dwarf -g $(DIR)rindex.asm

strcasecmp.o: $(DIR)strcasecmp.asm
	nasm -felf64 -F dwarf -g $(DIR)strcasecmp.asm

memmove.o: $(DIR)memmove.asm
	nasm -felf64 -F dwarf -g $(DIR)memmove.asm

memcpy.o: $(DIR)memcpy.asm
	nasm -felf64 -F dwarf -g $(DIR)memcpy.asm

memset.o: $(DIR)memset.asm
	nasm -felf64 -F dwarf -g $(DIR)memset.asm

strstr.o: $(DIR)strstr.asm
	nasm -felf64 -F dwarf -g $(DIR)strstr.asm

strncmp.o: $(DIR)strncmp.asm
	nasm -felf64 -F dwarf -g $(DIR)strncmp.asm

strcmp.o: $(DIR)strcmp.asm
	nasm -felf64 -F dwarf -g $(DIR)strcmp.asm

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

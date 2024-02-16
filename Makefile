# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tlukan <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/15 12:18:17 by tlukan            #+#    #+#              #
#    Updated: 2024/02/15 12:18:28 by tlukan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c ft_putchr.c ft_putnbr.c ft_putnbrbas.c ft_putnbrbasp.c \
ft_putnbruns.c ft_putstr.c 

OUT = $(SRCS:.c=.o)

CC = gcc

CFLAGS = -Wall -Werror -Wextra
 
.c.o:
		@${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o}

$(NAME): $(OUT)
		@ar rcs $(NAME) $(OUT)

all:	$(NAME)

clean:
		@rm -f $(OUT) $(BOUT)

fclean: clean
		@rm -f $(NAME)

re: 	fclean all

r:
	@make -s
	@gcc main.c libftprintf.a
	@./a.out

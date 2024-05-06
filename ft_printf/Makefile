# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jfilipa- <jfilipa-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/08 18:05:49 by jfilipa-          #+#    #+#              #
#    Updated: 2024/05/06 17:29:44 by jfilipa-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c ft_print_char.c ft_print_hex.c ft_print_pointer.c ft_print_str.c ft_print_unsigned.c ft_putnbr.c

OBJS = $(SRCS:.c=.o)

FLAGS = -Wall -Werror -Wextra

RM = rm -rf

all : $(NAME)

$(NAME) : $(OBJS)
		ar rcs $(NAME) $(OBJS)

clean :
		$(RM) $(OBJS)

fclean : clean
		$(RM) $(NAME)

re : fclean all

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jfilipa- <jfilipa-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/25 18:17:54 by jfilipa-          #+#    #+#              #
#    Updated: 2024/04/25 18:17:54 by jfilipa-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minitalk

SERVER = server
CLIENT = client

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

PRINTF = libftprintf.a
FT_PRINTF_DIR = ft_printf
INCLUDE = -I include

SRC1 = utils.c server.c
SRC2 = utils.c client.c

OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)

%.o: %.c minitalk.h 
	$(CC) $(CFLAGS) -c $< -o $@

all: $(SERVER) $(CLIENT)

$(SERVER): $(OBJ1)
	make -C $(FT_PRINTF_DIR)
	$(CC) $(CFLAGS) $(OBJ1) $(INCLUDE) $(FT_PRINTF_DIR)/$(PRINTF) -o $(SERVER)

$(CLIENT): $(OBJ2)
	make -C $(FT_PRINTF_DIR)
	$(CC) $(CFLAGS) $(OBJ2) $(INCLUDE) $(FT_PRINTF_DIR)/$(PRINTF) -o $(CLIENT)

clean:
	make clean -C $(FT_PRINTF_DIR)
	$(RM) $(OBJ1) $(OBJ2)

fclean: clean
	make fclean -C $(FT_PRINTF_DIR)
	$(RM) $(SERVER) $(CLIENT)

re: fclean all

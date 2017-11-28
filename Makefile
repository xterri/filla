# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thuynh <thuynh@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/28 10:00:19 by thuynh            #+#    #+#              #
#    Updated: 2017/11/28 11:47:02 by thuynh           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC     = gcc -Wall -Wextra -Werror
NAME   = thuynh.filler
CFLAGS = $(patsubst %,-I %,$(IDIR))


IDIR = includes/ \
	   libft/includes/

MDIR = libft # other folders
SDIR = srcs
ODIR = objs

MAKE = $(patsubst %,make -C %,$(MDIR))

_SRC = main.c 
SRC  = $(patsubst %,$(SDIR)/%,$(_SRC))

_OBJ = $(_SRC:.c=.o)
OBJ  = $(patsubst %,$(ODIR)/%,$(_OBJ))

all: $(NAME)

$(NAME):
	@$(CC) $(CFLAGS) -c $(SRC)
	@$(MAKE)
	@mkdir objs/
	@mv *.o objs/
	@$(CC) -o $(NAME) $(OBJ) -L libft -lft
	@echo "finished compiling"

clean:
	@make clean -C $(MDIR)
	@rm -rf $(ODIR)

fclean: clean
	@make fclean -C $(MDIR)
	@rm -rf $(NAME)

re: fclean all

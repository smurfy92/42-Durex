# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jtranchi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/06 16:48:55 by jtranchi          #+#    #+#              #
#    Updated: 2018/09/06 16:48:57 by jtranchi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = main.c

NAME = Durex

SRCDIR = srcs/
OBJDIR = objs/
OBJ = $(addprefix $(OBJDIR), $(SRC:.c=.o))
LIB = libft/libft.a

CG = \033[92m
CY =  \033[93m
CE = \033[0m
CB = \033[34m
INC = -I ./includes/

all: start lib $(NAME)

lib:
	-@make -C libft nohd

$(NAME): $(OBJ)
	   @gcc -o $(NAME) $(OBJ) $(FLAG) $(INC) $(LIB);
	   @echo "\033[K$(CY)[DUREX] :$(CE) $(CG)Compiling Durex$(CE)";


start:
	@mkdir -p $(OBJDIR)
	@echo "\n";
	@echo "			$(CG)      :::::::::  :::    ::: :::::::::  :::::::::: :::    :::    $(CE)";
	@echo "			$(CG)     :+:    :+: :+:    :+: :+:    :+: :+:        :+:    :+:     $(CE)";
	@echo "			$(CG)    +:+    +:+ +:+    +:+ +:+    +:+ +:+         +:+  +:+       $(CE)";
	@echo "			$(CG)   +#+    +:+ +#+    +:+ +#++:++#:  +#++:++#     +#++:+         $(CE)";
	@echo "			$(CG)  +#+    +#+ +#+    +#+ +#+    +#+ +#+         +#+  +#+         $(CE)";
	@echo "			$(CG) #+#    #+# #+#    #+# #+#    #+# #+#        #+#    #+#         $(CE)";
	@echo "			$(CG)#########   ########  ###    ### ########## ###    ###         $(CE)";
	@echo "\n";

$(OBJ): $(OBJDIR)%.o: $(SRCDIR)%.c
	@echo "\033[K$(CY)[DUREX] :$(CE) $(CG)Compiling $<$(CE)";
	@gcc $(FLAG) -c $< -o $@ $(INC)

clean: start
	@echo "$(CY)[DUREX] :$(CE) $(CG)Cleaning Durex objects$(CE)";
	-@make -C libft nohdclean;
	@/bin/rm -rf $(OBJ);

fclean: start clean
	@echo "\033[K$(CY)[DUREX] :$(CE) $(CG)Cleaning binairies ...$(CE)";
	-@make -C libft nohdfclean;
	@/bin/rm -f $(NAME);

re: fclean all

.PHONY: all clean fclean re

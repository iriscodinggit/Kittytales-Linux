NAME := so_long

CC := clang

CFLAGS := -Wall -Wextra -Werror -Iheaders

SOURCE := game_logic/*.c
GETNEXTLINE := gnliris/*.c
FT_PRINTF := printf/*.c

# Libraries for Linux
//LIBRARY := -L./minilibx-linux -lminilibx_linux -lXext -lX11
//MINILIBX := minilibx-linux/

all:
	make -C mlx_linux all
	$(CC) $(CFLAGS) $(SOURCE) $(GETNEXTLINE) $(FT_PRINTF) -o $(NAME) -Imlx_linux -Lmlx_linux -lmlx -lmlx_Linux -L/usr/lib -lXext -lX11

clean:
	make clean -C mlx_linux clean
	rm -rf $(NAME)

fclean: clean
	make clean -C mlx_linux clean
	rm -rf $(NAME)

re: fclean all

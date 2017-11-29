/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: thuynh <thuynh@student.42.us.org>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/28 10:50:32 by thuynh            #+#    #+#             */
/*   Updated: 2017/11/28 16:09:49 by thuynh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "filler.h"
#include <stdio.h>

int		main(void)
{
	char *line;

	// ./filler_vm passes the map as a string to player's executable (read from stdin)
	while (get_next_line(0, &line))
	{
		// read line
		// if line has player executable file in it
			// set the player (determine if they are 'O' or 'X')
		// if line starts with "Plateau "
			// set and save the board information (know where the pieces are on the board)
		if (ft_strstr(line, "Plateau "))
		{
			// make copy of board
			puts("save board information");
		}
		// if line begins with "Piece "
			// get the token information (#'s after 'Piece' = size of piece)
			// when enterin the coordinates onto the board, will always read from [0, 0], regardless if token exists there or not
		write(1, "8 2\n", 4);
	}
	free(line);
	return (0);
}

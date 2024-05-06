/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jfilipa- <jfilipa-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/22 17:06:10 by jfilipa-          #+#    #+#             */
/*   Updated: 2024/04/22 17:06:10 by jfilipa-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	send_bits(pid_t pid, unsigned char c)
{
	int				bit;
	unsigned char	temp_char;

	bit = 0;
	temp_char = c;
	while (bit < 8)
	{
		if (temp_char % 2 == 0)
			kill(pid, SIGUSR2);
		else
			kill(pid, SIGUSR1);
		temp_char = temp_char >> 1;
		bit++;
		usleep(100);
	}
}

int	main(int argc, char **argv)x
{
	pid_t	pid;
	char	*msg;

	if (argc == 3)
	{
		pid = ft_atoi(argv[1]);
		msg = argv[2];
		while (*msg != '\0')
		{
			send_bits(pid, *msg);
			msg++;
		}
		send_bits(pid, '\n');
	}
	else
	{
		ft_printf("Error: wrong format\n");
		ft_printf("Try: ./client <pid> <message>\n");
		return (1);
	}
	return (0);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tlukan <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/15 10:35:41 by tlukan            #+#    #+#             */
/*   Updated: 2024/02/15 10:35:49 by tlukan           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <limits.h>
# include <stdlib.h>
# include <stdio.h>
# include <stdarg.h>
# include <unistd.h>

int	ft_printf(const char *string, ...);
int	ft_putchr(char c);
int	ft_putnbr(int n);
int	ft_putnbrbas(unsigned int nbr, char c);
int	ft_putnbrbasp(unsigned long int nbr);
int	ft_putnbruns(unsigned int n);
int	ft_putstr(char *s);

#endif
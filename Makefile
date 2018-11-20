# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kcosta <kcosta@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/20 13:00:05 by kcosta            #+#    #+#              #
#    Updated: 2018/11/20 13:24:45 by kcosta           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := linear_regression

.PHONY: install test clean

install:
	@python3 -m pip install -r requirements.txt

test:
	@python3 setup.py test || true

clean:
	@python3 setup.py clean
	@rm -rf $(NAME)/__pycache__/						2> /dev/null || true
	@rm -rf $(NAME)/predictor/__pycache__/	2> /dev/null || true
	@rm -rf $(NAME)/trainer/__pycache__/		2> /dev/null || true
	@rm -rf $(NAME)/visualizer/__pycache__/	2> /dev/null || true
	@rm -rf tests/__pycache__/							2> /dev/null || true
	@rm -rf $(NAME).egg-info/								2> /dev/null || true

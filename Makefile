dir = $(shell pwd)

install: install-chunkwm install-skd

install-chunkwm:
	rm -f ~/.chunkwmrc
	ln -s "$(dir)/chunkwmrc" ~/.chunkwmrc
	rm -f ~/.safari.sh
	ln -s "$(dir)/scripts/safari.sh" ~/.safari.sh
	rm -f ~/.iterm.sh
	ln -s "$(dir)/scripts/iterm.sh" ~/.iterm.sh

install-skd:
	rm -f ~/.skhdrc
	ln -s "$(dir)/skhdrc" ~/.skhdrc

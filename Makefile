SHELL = /bin/bash
.PHONY: toc doctoc

toc: doctoc
	doctoc --github README.md --title "**Содержание**"

doctoc:
	@halt() { echo $$*; exit 1 ; } ; \
		which doctoc > /dev/null || halt "Install 'npm -g install doctoc'"

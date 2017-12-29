.PHONY: all
all: dotfiles

.PHONY: dotfiles
dotfiles:
	@for file in ${shell find ${CURDIR} -name ".*" -type f -not -name ".git" -not -name ".gitignore"}; do \
		f=$$(basename $$file); \
		ln -sfn $$file ${HOME}/$$f; \
		chmod 755 ${HOME}/$$f; \
	done

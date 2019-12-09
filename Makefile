SOURCE	:= $(shell pwd)
TARGET	:= ~
FILES	:= .bash_aliases .bashrc .bashrc.d .bash_profile .gradle .tmux.conf .gitconfig .ackrc .zshrc .screenrc

all: clean install

install:
	@for f in $(FILES); do \
		ln -sf $(SOURCE)/$$f $(TARGET)/$$f; \
	done
	@mkdir -p ~/.ssh/
	@chmod 700 ~/.ssh/
	@ln -sf $(SOURCE)/.sshrc ~/.ssh/rc
	@ln -s $(SOURCE)/bin/ ~/bin

clean:
	@for f in $(FILES); do \
		rm -rf $(TARGET)/$$f; \
	done
	@rm -rf ~/bin

dry_run:
	@for f in $(FILES); do \
	   if [ -e $(TARGET)/$$f ]; then echo "$(TARGET)/$$f will be removed"; fi \
    done
	@if [ -d ~/bin ]; then echo "~/bin will be removed"; fi

PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
SHAREDIR ?= $(PREFIX)/share/hyprevents

install: events_handler hyprevents
	@install -Dm755 events_handler --target-directory "$(SHAREDIR)"
	@install -Dm755 hyprevents --target-directory "$(BINDIR)"

PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
SHAREDIR ?= $(PREFIX)/share/hyprevents

install: event_handler event_loader hyprevents
	@install -Dm644 event_handler --target-directory "$(SHAREDIR)"
	@install -Dm655 event_loader --target-directory "$(SHAREDIR)"
	@install -Dm755 hyprevents --target-directory "$(BINDIR)"

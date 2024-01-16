PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
SHAREDIR ?= $(PREFIX)/share/hyprevents

install: event_handler event_loader hyprevents
	@install -Dm644 event_handler --target-directory "$(SHAREDIR)"
	@sed 's|^EVENT_HANDLER=.*|EVENT_HANDLER="$(SHAREDIR)/event_handler"|' event_loader \
		| install -Dm755 /dev/stdin "$(SHAREDIR)/event_loader"
	@sed 's|^EVENT_LOADER=.*|EVENT_LOADER="$(SHAREDIR)/event_loader"|' hyprevents \
		| install -Dm755 /dev/stdin "$(BINDIR)/hyprevents"

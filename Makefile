SYSTRAYICON_CFLAGS	:= `pkg-config --cflags gtk+-3.0`
SYSTRAYICON_LDFLAGS	:= `pkg-config --libs gtk+-3.0`
SYSTRAYICON_OBJECTS	:= systrayicon.o
CFLAGS	:= -Wall $(SYSTRAYICON_CFLAGS)

all: $(SYSTRAYICON_OBJECTS)
	$(CC) -o systrayicon $(SYSTRAYICON_OBJECTS) $(SYSTRAYICON_LDFLAGS)

install: systrayicon
	mkdir -p $(DESTDIR)/usr/bin/
	cp systrayicon $(DESTDIR)/usr/bin/

remove:
	rm $(DESTDIR)/usr/bin/systrayicon

clean:
	rm -f systrayicon


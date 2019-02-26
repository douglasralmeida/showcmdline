DEFS=-D_UNICODE -DUNICODE -D_WIN32_WINNT=0x0600

PROJECTNAME=scline

OBJFILES=main.o
OBJECTS=$(OBJFILES)

CFLAGS=-c -Wall -Wextra -Wpedantic $(DEFS)
DBGFLAGS=
LDFLAGS=-municode -mwindows

$(OBJDIR)/%.o: %.c
	@(echo. && echo Compilando $<...)
	$(CC) $(DBGFLAGS) $(CFLAGS) $< -o $@

$(PROJECTNAME).exe: $(OBJECTS)
	@(echo. && echo Gerando biblioteca $@...)
	$(CC) $(LDFLAGS) -o $@ $^

all: $(PROJECTNAME).exe
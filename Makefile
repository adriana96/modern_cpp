DEBUG=debug
RELEASE=release
CC=g++
CFLAGS=-std=c++17 -Wall -Wextra -Wpedantic -Werror 
IFLAGS=-Iincludes
SOURCES=*.cpp includes/*.hpp

.PHONY: all
all: $(DEBUG) $(RELEASE)

$(DEBUG): $(SOURCES)
	$(CC) $< $(CFLAGS) $(IFLAGS) -g -o $@ 

$(RELEASE): $(SOURCES)
	$(CC) $< $(SFLAGS) $(IFLAGS) -O3 -o $@ 

.PHONY: clean
clean:
	rm $(DEBUG) $(RELEASE)

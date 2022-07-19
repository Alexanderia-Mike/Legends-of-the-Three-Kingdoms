CC = gcc
CFLAGS = -std=c11 -pedantic -Wall -Wextra -Werror
LOTTK_SRC = fate.c	horse.c	lightning.c	listtitle.c	arrowbarrage.c	main.c ask\ for\ help.c	pause.c	attackrange.c	peach.c	barbarian.c	peachgarden.c	binoculars.c	playcard.c	borrowedsword.c	players.c	bountifulharvest.c	bow.c	cards.c	returncards.c	cardsinitialwithargument.c	reveal.c	shuffle.c	changehealth.c	shufflediscard.c	checksuccess.c	snatch.c	create\ list\ of\ players.c	somethingfornothing.c	deal\ the\ cards.c	starvation.c	discard.c	strike.c	dismantle.c	testifyfate.c	distance.c	dodge.c	wine.c	drowninhappiness.c
LOTTK = LotTK
ifeq ($(OS),Windows_NT)	
	LOTTK = LotTK.exe
	RM = del
endif
.PHONY: all clean tar

all: $(LOTTK)
	@echo Built target $(LOTTK)

$(LOTTK): $(LOTTK_SRC)
	$(CC) $(CFLAGS) -o $(LOTTK) $(LOTTK_SRC)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) *.o *.a *~ $(LOTTK)

tar:
	tar -cf LotTK.tar $(LOTTK_SRC) Makefile
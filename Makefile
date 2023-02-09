giftcardreader: giftcardreader.c examplefile.gft
	gcc -o giftcardreader giftcardreader.c
	./giftcardreader 1 examplefile.gft


giftcardexamplewriter:
	gcc -o giftcardexamplewriter giftcardexamplewriter.c
	./giftcardexamplewriter


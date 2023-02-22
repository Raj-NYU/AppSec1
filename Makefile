giftcardreader: giftcardreader.c
	#gcc -o giftcardreader giftcardreader.c && ./giftcardreader 1 cov1.gft
	#gcc -o giftcardreader giftcardreader.c && ./giftcardreader 1 cov2.gft
	#gcc -o giftcardreader giftcardreader.c && ./giftcardreader 1 fuzzer1.gft
	gcc -o giftcardreader giftcardreader.c && ./giftcardreader 1 fuzzer2.gft

giftcardexamplewriter:
	gcc -o giftcardexamplewriter giftcardexamplewriter.c && ./giftcardexamplewriter



# Testing
To ensure the reliability of the giftcardreader program, I performed a series of tests to identify any potential issues.

## Coverage Findings
Initially, when running a code coverage analysis on the untouched giftcardreader file, I found that only 32% of the code was covered. In order to improve this, I generated two different test cases (cov1 and cov2) which increased the code coverage by almost 30%.

To generate these test cases, I compiled the program with coverage instrumentation enabled using the command gcc -g --coverage giftcardreader.c -o giftcardreader. I then executed the program with the examplefile.gft file as input, and obtained coverage data using gcov. Finally, I used lcov and genhtml to generate a report on code coverage.

## Fuzzer Findings
To test for any vulnerabilities or bugs, I used AFL (American Fuzzy Lop) to fuzz the giftcardreader program. After running the program for four hours, I analyzed the generated binary files and found mulitple interesting test cases.

The first test case (Fuzzer1.gft) caused a stack smashing error, which I determined was caused by a buffer overflow vulnerability. I used GDB to identify the exact location of the error, which was in the animate function. Specifically, the 0x04 case was not checking bounds for arg2, resulting in an attempt to write to inaccessible addresses. I fixed this issue by adding bounds within the 0x04 case.

The second test case (Fuzzer2.gft) caused a segmentation fault error, which I suspected was caused by the program trying to access memory that was not available. To investigate further, I used GDB and found that the error was occurring in the animate function, specifically the 0x03 case. I was unable to determine a solution for this issue, but I considered using Valgrind to help identify memory issues.

## Conclusion
Overall, by using a combination of code coverage analysis and fuzz testing, I was able to identify and address potential issues in the giftcardreader program.

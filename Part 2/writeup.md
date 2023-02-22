# Bugs
In analyzing the code, I was able to identify several issues that could lead to bugs and crashes. By carefully examining the source code, I discovered specific areas where errors could occur and developed solutions to address these issues.

## Crash1.gft
The first crash was caused by unchecked return values that resulted in a segmentation fault when a negative value was passed to the malloc function. To resolve this issue, I added a validation check to ensure that the value passed to num_bytes was positive before executing the function, preventing any future crashes.

## Crash2.gft
The second crash was the result of a lack of boundary checking in the switch statement, which allowed the program to write outside of its designated memory space. By overwriting the rip value for the first 8 bytes of the message, I was able to trigger a segmentation fault. To prevent this from occurring, I modified the code to ensure that indexed regs array remained within the bounds of 0 and 15.

## Hang.gft
The hang issue, which I named "Hang," was caused by a signed char being cast as arg1, which could accept both positive and negative values. When a negative value was passed, the final check would always be less than the program, resulting in an infinite loop. To resolve this, I simply changed the signed char to unsigned, which ensured that it only accepted non-negative values.

## Agnostic Crash / Crash3.gft
Finally, "Crash 3" was caused by the main function failing to check whether a file was present or not. This would result in a segmentation fault when attempting to execute the reader program without a file. To address this issue, I added an if statement to check whether a file was present and exited gracefully with an error message if not.

## Conclusion
Overall, these fixes have greatly improved the stability and reliability of the code, ensuring that it runs smoothly without the risk of crashes or hangs.

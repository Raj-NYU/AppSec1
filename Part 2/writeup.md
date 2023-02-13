# bugs

# Crash 1 
## Exploit Explanation:
  I found crash1 by analyzing line 190 and more specifically num_bytes and the return value. There was unchecked return values leading to a segmentation fault when a negative number is passed to malloc such as (-1).
## Fix:
  This was fixed by validating the value that is passed to the return value to num_bytes is positive (greater than 0) and exiting the program gracefully.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Crash 2
## Exploit Explanation:
  I was able to spot the second crash by figuring out that there was no out of bound checking at the start of the switch cases and writing outside of the bounds allowed the program to crash. Keeping this in mind I was able to create the crash by writign specific instructions to overwrite the rip value for the first 8 bytes of the message which caused a segmentation fault. 
## Fix:
  I was able to fix this crash by checking the bounds of indexed regs array to be between 0 and 15. 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Hang
## Exploit Explanation:
  I found a hang within the animate function by analzying the "signed" char which was casted to arg1 (line 63). This means that the value can be either positive or negative. This was a problem because when a negative value is passed which will trigger a hang because the final check will always be less than the program, causing a loop. by increasing and decreasing by 3.
## Fix:
  This was an easy fix. All I did was make sure that the "signed" char was "unsigned".

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Crash 3
## Exploit Explanation:
  After analzying the main function, I found that this function did not check whether a file is passed or not. When a file is not executed with the reader program there was a segmentation fault. 
## Fix:
  I was easily able to fix this by adding if statements that check whether a file is present or not. If a file is not present, I exited gracefully with a error message. 

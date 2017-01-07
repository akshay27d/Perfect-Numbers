# Perfect-Numbers
Finds perfect numbers using functional programming in Lisp

README- Project 3: Functional Programming
Akshay Desai

To run the project, open the file into the DrRacket GUI. In the bottom left, change the language to “Pretty Big,” then 
in the top right, click “Run.”

The last 4 lines are running it. The 1st of the 4 takes in an input, I’ve set it to “3” so it will print out the 1st 3 
perfect numbers. 

The following 3 lines runs programs to determine the perfectness, abundance, and “deficience”. I thought about running 
a program that would recursively append a list with “perfect” “abundant” or “deficient” next to the numbers but I thought 
that would be messy and difficult to read, so I had 3 methods to make lists for each type. 

I have the method name and 1000 so it will find each number of each type from 2 to 1000, the head of each list is labeled.

My code has many helper functions, I could have instead of defining them, put them inside other functions but I thought 
that would be more difficult to read.

The way I solved part 1, I recursively looped through the numbers until I found “x” perfect numbers, then it halted.

For part 2, my code calls the method of what type we want, which then calls a method which makes a list of divisors of each 
number, then it adds them up to decide if it should be added to the list.

No collaborators and no acknowledgements.

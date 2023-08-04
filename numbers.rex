#!/usr/bin/env rexx
/*REXX
    numbers.rex
    Learn how to use the OORexxUnit test framework & Test Driven Development 

    Write a program that prints the numbers from 1 to 100. But for multiples of thre print "Fizz" instead of the number and for multiples of five print "Buzz". For
    numbers which are multiples of both three and five print "FizzBuzz". 

    Using TDD idea of Red -> Green -> Refactor 
    https://www.youtube.com/watch?v=llaUBH5oayw&list=PLwLLcwQlnXByqD3a13UPeT4SMhc3rdZ8q

*/

/*trace i*/
/*Get this program's name*/
parse source system invocation full_program_path
full_program_path = reverse(full_program_path)
parse var full_program_path 'xer.' this_ '/' .
this_ = reverse(this_) 


/****************************************************************************
* Directives: Requires, Class, Methods, Attributes, requ& routine setup area*                             
*****************************************************************************/
::class Numbers public


::method display
    use arg count, newObject

    do i = 1 to count 
      x = newObject||'~'||methodUsed||'('i')' 
      interpret x
    end i 

    return count


#!/usr/bin/env rexx
/*REXX
    fizzBuzz.rex
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


/*Create new fizz buzz object*/
FizzBuzzObject = .FizzBuzz~new

/*use display method to call invoke fizzbuzz method and print*/
FizzBuzzObject~displayTxt(15, FizzBuzzObject, 'Y')




exit rc


/****************************************************************************
* Directives: Requires, Class, Methods, Attributes, requ& routine setup area*                             
*****************************************************************************/
::class FizzBuzz public
::method fizzbuzz  
    use arg input

    if (input // 3 = 0) & (input // 5 = 0) then 
        input = 'FizzBuzz'
    else if input // 3 = 0 then
        input = 'Fizz'
    else if input // 5 = 0 then
        input = 'Buzz'
    else nop

    return input


::method displayTxt
    use arg count, input, testing

    if testing == 'Y' then nop

    else 
        do i = 1 for count
            say input~fizzbuzz(i) 
        end i  

    return count
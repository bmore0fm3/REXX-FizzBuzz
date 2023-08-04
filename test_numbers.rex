#!/usr/bin/env rexx
/*REXX
    test_numbers.rex
    Learn how to use the OORexxUnit test framework & Test Driven Development 
    Used example from ooRexxUnit: A jUnit Compliant Testing Framework for ooREXX programs by Rony G. Flatscher
    Instead of using ~run I use ~execute

    Write a program that prints the numbers from 1 to 100. But for multiples of thre print "Fizz" instead of the number and for multiples of five print "Buzz". For
    numbers which are multiples of both three and five print "FizzBuzz". 

    Using TDD idea of Red -> Green -> Refactor 
    https://www.youtube.com/watch?v=llaUBH5oayw&list=PLwLLcwQlnXByqD3a13UPeT4SMhc3rdZ8q
    

*/
  
/*trace i*/

/*Test result object will be used to log all runs*/
aTr = .TestResult~new         

/*Create an instance and denote a test method to run*/
test1 =.TestNumbers~new("shouldDisplayEachNumber") 

/*run the test code, supply a TestResult object*/
aTr = test1~execute(aTr)

/*Create an instance/instances (denoting the name of the test method to run) and run it.Supply the same test result object as before
.TestFizzBuzz~new("shouldReturnFizzForThree")~execute(aTr)
.TestFizzBuzz~new("shouldReturnBuzzForFive")~execute(aTr)
.TestFizzBuzz~new("shouldReturnFizzForMultiplesOfThree")~execute(aTr)
.TestFizzBuzz~new("shouldReturnFizzForMultiplesOfFive")~execute(aTr)
.TestFizzBuzz~new("shouldReturnFizzBuzzForMultiplesOfFiveAndThree")~execute(aTr)*/

/*runs the test case and returns the result. Fine for a single test
aTestResult=test1~execute*/


/*dump brief test results*/
call simpleDumpTestResults aTr, "test_numbers Results"

/****************************************************************************
* Directives: Requires, Class, Methods, Attributes, requ& routine setup area*                             
*****************************************************************************/
::requires numbers                    /*get access to the numbers Class*/
::requires ooRexxUnit.cls             /*get access to ooREXXUnit framework*/
::class TestNumbers subclass TestCase /* a specialization of TestCase*/



::method shouldDisplayEachNumber             /*This method's code is the test code*/
    expose displayCount numbers
    self~assertEquals(2, .Numbers~new~display(2))           /*using the Assert class via inheritance*/



    

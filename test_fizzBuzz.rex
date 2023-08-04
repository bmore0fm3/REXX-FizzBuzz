#!/usr/bin/env rexx
/*REXX
    test_fizzBuzz.rex
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
test1 =.TestFizzBuzz~new("shouldReturnNumber") 

/*run the test code, supply a TestResult object*/
aTr = test1~execute(aTr)

/*Create an instance/instances (denoting the name of the test method to run) and run it.Supply the same test result object as before*/
.TestFizzBuzz~new("shouldReturnFizzForThree")~execute(aTr)
.TestFizzBuzz~new("shouldReturnBuzzForFive")~execute(aTr)
.TestFizzBuzz~new("shouldReturnFizzForMultiplesOfThree")~execute(aTr)
.TestFizzBuzz~new("shouldReturnFizzForMultiplesOfFive")~execute(aTr)
.TestFizzBuzz~new("shouldReturnFizzBuzzForMultiplesOfFiveAndThree")~execute(aTr)
.TestFizzBuzz~new("shouldDisplayEachNumber")~execute(aTr)

/*runs the test case and returns the result. Fine for a single test
aTestResult=test1~execute*/


/*dump brief test results*/
call simpleDumpTestResults aTr, "test_fizzBuzz Results"

exit 
/****************************************************************************
* Directives: Requires, Class, Methods, Attributes, requ& routine setup area*                             
*****************************************************************************/
::requires fizzBuzz                    /*get access to the fizzBuzz Class*/
::requires ooRexxUnit.cls              /*get access to ooREXXUnit framework*/
::class TestFizzBuzz subclass TestCase /* a specialization of TestCase*/


::method shouldReturnNumber            /*This method's code is the test code*/
    answer = .FizzBuzz~new
    self~assertEquals('2', answer~fizzbuzz(2))            /*using the Assert class via inheritance*/
    /*self~assertEquals("test: 3 = (1 + 2)", 3, 1 + 2) supply a failure message*/

::method shouldReturnFizzForThree                         /*This method's code is the test code*/
    answer = .FizzBuzz~new
    self~assertEquals('Fizz', answer~fizzbuzz(3))

::method shouldReturnBuzzForFive                          /*This method's code is the test code*/
    answer = .FizzBuzz~new
    self~assertEquals('Buzz', answer~fizzbuzz(5))

::method shouldReturnFizzForMultiplesOfThree              /*This method's code is the test code*/
    answer = .FizzBuzz~new
    self~assertEquals('Fizz', answer~fizzbuzz(9))

::method shouldReturnFizzForMultiplesOfFive               /*This method's code is the test code*/
    answer = .FizzBuzz~new
    self~assertEquals('Buzz', answer~fizzbuzz(25))

::method shouldReturnFizzBuzzForMultiplesOfFiveAndThree  /*This method's code is the test code*/
    answer = .FizzBuzz~new
    self~assertEquals('FizzBuzz', answer~fizzbuzz(15))

::method shouldDisplayEachNumber             /*This method's code is the test code*/
    answer = .FizzBuzz~new
    self~assertEquals(2, answer~displayTxt(2, answer, 'Y'))           /*using the Assert class via inheritance*/


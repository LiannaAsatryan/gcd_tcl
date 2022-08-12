#description of the main program
this program finds the greatest common dividor of two numbers written in the input file like this:
 num1 num2
 num1 num2
 ...
after the execution the answers will be store in the output file like this:
 answer1
 answer2
 ... 

#gcd_test.tcl description
this test_file performs the following operations for every line in the input file:
reads two input numbers from the input file, finds their greatest common dividor, writes in the output file, 
compares the result value with the corresponding value in golden file and writes the appropriate message in the result file
If there is an input which is not an integer number, in the output and golden files will be written "wrong input"

#files
 in this directory there are following files
* input.txt __ it is the file where our input values are written
* golden.txt __ it is the file where our correct answers are written
* gcd_functions.tcl __it is the file where the problem_solver function and other related functions are written
* gcd_test.tcl __ this file contains the operations of reading from the input file, solving and writing in output file and the result file(testing)
* main.tcl __ this file contains the program which solves our main problem (without testing)

the files that will be generated are 
*output.txt__here the result-values are written
*result.txt__here the test results are written(test passed or not)


#to run the main program type in command line
 tclsh main.tcl
to clean the generated files type 
 rm output.txt


#to run the test type in command line
 tclsh gcd_test.tcl
to clean the generated files type 
 rm output.txt result.txt

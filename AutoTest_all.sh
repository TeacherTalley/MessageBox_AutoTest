#!/bin/bash
echo
echo "#################### START: AutoTest Results #####################"
srcfiles="main.cpp MessageBox.h"
echo "Source files:" $srcfiles
echo
echo "--- Checking code format (cpplint) ---"
#cpplint --filter=-legal/copyright,-whitespace/braces,-runtime/explicit,-whitespace/newline,-whitespace/end_of_line *.cpp *.h
cpplint $srcfiles
echo
cd build
echo
echo "--- Checking main output (diff) ---"
./main > test_main_output.txt
diff ../AutoTest_main_output.txt test_main_output.txt
echo
echo "--- Unit testing (googletest - all tests at once) ---"
ctest
echo
echo "--- Unit testing (single test at a time) ---"
./AutoTest_gtests --gtest_filter=MessageBox.SendAndReceive
./AutoTest_gtests --gtest_filter=MessageBox.OutOfRange
./AutoTest_gtests --gtest_filter=MessageBox.FullAndEmpty
./AutoTest_gtests --gtest_filter=MessageBox.CountAndSize
./AutoTest_gtests --gtest_filter=MessageBox.Print
echo
cd ..
echo "#################### END: AutoTest Results   #####################"
echo

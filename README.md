# MessageBox_AutoTest
MessageBox Auto Testing Suite

This repository contains the auto test suite for the Message Box example program
using the GitHub Classroom autograding capabilities.

To configure the autograding, take the following steps in the **MessageBox* repository
(**NOT** the **MessageBox_AutoTest** repository).

Under the autograding setup:

Test 1: 
- Name: AutoTest Setup - Install test code, copy student source, build student and test code
- Setup: git clone https://github.com/TeacherTalley/MessageBox_AutoTest.git
- Run: cd MessageBox_AutoTest && ./AutoTest_setup.sh
- Points: 0

Test 2:
- Name: Main Output Test - Run student main and compare output to test output
- Setup: cd MessageBox_AutoTest
- Run: ./main > test_main_output.txt && diff ../AutoTest_main_output.txt test_main_output.txt
- Points: 10

Test 3:
- Name: Coding Style Test - Run cpplint on student code
- Setup: cd MessageBox_AutoTest && pip install cpplint
- Run: cpplint main.cpp MessageBox.h
- Points: 10

Test 4:
- Name: SendAndReceive Test
- Setup: cd MessageBox_AutoTest
- Run: ./build/AutoTest_gtests --gtest_filter=MessageBox.SendAndReceive
- Points: 10

Test 5:
- Name: FullAndEmpty Test
- Setup: cd MessageBox_AutoTest
- Run: ./build/AutoTest_gtests --gtest_filter=MessageBox.FullAndEmpty
- Points: 10

Test 6:
- Name: CountAndSize Test
- Setup: cd MessageBox_AutoTest
- Run: ./build/AutoTest_gtests  --gtest_filter=MessageBox.CountAndSize
- Points: 10

Test 7:
- Name: Print Test
- Setup: cd MessageBox_AutoTest
- Run: ./build/AutoTest_gtests  --gtest_filter=MessageBox.Print
- Points: 10
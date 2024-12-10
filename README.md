# MessageBox_AutoTest
MessageBox Auto Testing Suite

This repository contains the auto test suite for the Message Box example program
using the GitHub Classroom autograding capabilities.

The strategy is to install this repository into the student's submitted repository for testing.
To prevent overrides of the code by students, the **MessageBox** repository should have a
**.gitignore** file that includes the pattern "*AutoTest*", but the **.gitignore** file for
this repository (**MessageBod_AutoTest**) should **not** contain that pattern.

Autograding is configured in the ".github/workflows/classroom.yml" file in the **MessageBox** repository.  This configuration specifies the points for each test and the steps align with the steps in **AutoTest_all.sh** in this repository.

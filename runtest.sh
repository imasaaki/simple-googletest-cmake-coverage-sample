# run test to output gcov file
cd build/test
./UnitTestExecutor

cd CMakeFiles/UnitTestExecutor.dir
lcov -b . -d . -c -o coverage.info

lcov -b . -r coverage.info */googletest/* test/* */c++/* -o coverageFiltered.info
genhtml -o lcovHtml --num-spaces 4 -s --legend coverageFiltered.info



#!/bin/bash
#
#  Delete old output file.
#
if [ -f problem3_output.txt ]; then
  rm problem3_output.txt
fi
#
#  Run in dimensions 1:9 using standard Clenshaw Curtis rule.
#
smolpack_interactive 3 1 5 123456789 2 >  problem3_output.txt
smolpack_interactive 3 2 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 3 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 4 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 5 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 6 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 7 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 8 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 9 5 123456789 2 >> problem3_output.txt
#
#  Run in dimension 10 using delayed Clenshaw Curtis rule.
#
smolpack_interactive 3 10 1 123456789 1 >> problem3_output.txt
smolpack_interactive 3 10 2 123456789 1 >> problem3_output.txt
smolpack_interactive 3 10 3 123456789 1 >> problem3_output.txt
smolpack_interactive 3 10 4 123456789 1 >> problem3_output.txt
smolpack_interactive 3 10 5 123456789 1 >> problem3_output.txt
smolpack_interactive 3 10 6 123456789 1 >> problem3_output.txt
smolpack_interactive 3 10 7 123456789 1 >> problem3_output.txt
smolpack_interactive 3 10 8 123456789 1 >> problem3_output.txt
#
#  Run in dimension 10 using standard Clenshaw Curtis rule.
#
smolpack_interactive 3 10 1 123456789 2 >> problem3_output.txt
smolpack_interactive 3 10 2 123456789 2 >> problem3_output.txt
smolpack_interactive 3 10 3 123456789 2 >> problem3_output.txt
smolpack_interactive 3 10 4 123456789 2 >> problem3_output.txt
smolpack_interactive 3 10 5 123456789 2 >> problem3_output.txt
smolpack_interactive 3 10 6 123456789 2 >> problem3_output.txt
smolpack_interactive 3 10 7 123456789 2 >> problem3_output.txt
smolpack_interactive 3 10 8 123456789 2 >> problem3_output.txt
#
echo "smolpack_interactive run on problem3."

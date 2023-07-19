import os, times, unittest

from polyglot_stack/variables import greatestPrimeLessThan, greatestPrimeLessThan1000

test "compiled answer":
  check greatestPrimeLessThan1000 == 997

test "runtime answer":
  check greatestPrimeLessThan(1000) == 997

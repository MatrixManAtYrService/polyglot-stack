import unittest

from polyglot_stack/sieve/runtime import greatestPrimeLessThan

test "runtime answer":
  check greatestPrimeLessThan(1000000) == 999983

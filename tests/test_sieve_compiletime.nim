import unittest

from polyglot_stack/sieve/compiletime import greatestPrimeLessThan1000000

test "compiled answer":
  check greatestPrimeLessThan1000000 == 999983

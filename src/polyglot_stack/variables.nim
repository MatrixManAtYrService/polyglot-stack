from math import sqrt, floor
from sequtils import newSeqWith

proc greatestPrimeLessThan*(n: int): int =
  ## The Seive of Eratosthenes is not an efficient algorithm,
  ## it calculates primes less than a given number.
  ## This function

  var sieve = newSeqWith(n, true)
  sieve[0] = false
  sieve[1] = false

  for i in 2..<int(sqrt(float(n)).floor()):
    if sieve[i]:
      for j in countup(i*i, n-i, i):
        sieve[j] = false

  for i in countdown(n-1, 2):
    if sieve[i]:
      return i

  return -1

# runs the above funtion at compile time
const greatestPrimeLessThan1000* = greatestPrimeLessThan(1000)

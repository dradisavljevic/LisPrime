# LisPrime

Common Lisp implementation of various prime number related functions.

## Files overview

coprime.lisp -> Function that checks whether or not the second given parameter is a coprime number of the first one.

coprimes-list.lisp -> For a given number, function returns a list of all of its coprime numbers.

fermat-primality.lisp -> Implementation of the Fermat primality test. Function returns a textual feedback if the given number is a possible prime.

isprime.lisp -> Holds implementation of the function that checks whether or not a given number is a prime number.

modular-multiplicative-inverse.lisp -> For given e and totient parameters returns the their modular multiplicative inverse. Used in the RSA implementation.

prime-factors.lisp -> Function that, for a given number, does prime factorization on it.

primes-between.lisp -> Implementation of the function that for two given numbers returns a list of all prime numbers in between them.

random-coprime.lisp -> Given a number, returns a random number from a list of its coprimes.

random-prime.lisp -> Forms a list of all the prime numbers in between the two given numbers and returns a randomly chosen number.

string-to-bytes.lisp -> Given a string, returns list of character codes for each of the strings characters.

prime-numbers.lisp -> Lisp file that holds collective implementation of all the functions mentioned above.

## Running from CLISP

After making sure clisp is installed on your machine, start the clisp tool inside the project's root directory by running:

```
clisp
```

After doing so, load the file that holds all the functions from other files by typing in the following command:

```
(load #P"prime-numbers")
```

This will load all the functions, and you are ready to experiment.

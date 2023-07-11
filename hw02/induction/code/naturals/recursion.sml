(* add : int * int -> int
 * REQUIRES: n, m >= 0
 * ENSURES: add (n, m) ==> n + m
 *)
fun add (0 : int, n : int) : int = n
  | add (m : int, n : int) : int = 1 + add (m - 1, n)

(* TEST CASES *)
val () = Test.int ("0 + 0", 0, add (0,0))
val () = Test.int ("0 + 5", 5, add (0,5))
val () = Test.int ("5 + 0", 5, add (5,0))
val () = Test.int ("15 + 150", 165, add (15,150))


(* mult :
 * REQUIRES:
 * ENSURES:
 *)
(* Note: You may want to pattern-match for different cases. *)
fun mult (m : int, 0 : int) : int =  0
  | mult (m : int, n : int) : int = m + mult(m, n - 1)
(* TEST CASES *)
val () = Test.int ("0 * 0", 0, mult (0,0))
val () = Test.int ("0 * 5", 0, mult (0,5))
val () = Test.int ("5 * 0", 0, mult (5,0))
val () = Test.int ("5 * 1", 5, mult (5,1))
val () = Test.int ("1 * 5", 5, mult (1,5))
val () = Test.int ("15 * 150", 2250, mult (15,150))


(* isPrime : int -> bool
 * REQUIRES: n > 1
 * ENSURES: isPrime n ==> true if n is prime and false otherwise
 *)
fun isPrimeHelper (n : int, m : int) : bool =
  if m > 1 then 
    if n mod m <> 0 then 
      isPrimeHelper(n, m - 1)
    else
      false
  else
    true

fun isPrime (n : int) : bool = isPrimeHelper(n, n - 1)


(* TEST CASES *)
(* Write test cases here *)
val () = Test.bool ("2", true, isPrime(2))
val () = Test.bool ("3", true, isPrime(3))
val () = Test.bool ("4", false, isPrime(4))
val () = Test.bool ("5", true, isPrime(5))
val () = Test.bool ("6", false, isPrime(6))
val () = Test.bool ("7", true, isPrime(7))
val () = Test.bool ("8", false, isPrime(8))
val () = Test.bool ("9", false, isPrime(9))
val () = Test.bool ("10", false, isPrime(10))
val () = Test.bool ("11", true, isPrime(11))
val () = Test.bool ("12", false, isPrime(12))
val () = Test.bool ("13", true, isPrime(13))
val () = Test.bool ("14", false, isPrime(14))
val () = Test.bool ("15", false, isPrime(15))
val () = Test.bool ("17", true, isPrime(17))

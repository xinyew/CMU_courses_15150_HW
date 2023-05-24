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
fun mult (m : int, n : int) : int =  (* Implementation goes here. *)
  raise Fail "Unimplemented"  (* DELETE THIS LINE *)

(* TEST CASES *)
(* Write test cases here *)


(* isPrime : int -> bool
 * REQUIRES: n > 1
 * ENSURES: isPrime n ==> true if n is prime and false otherwise
 *)
fun isPrime (_ : int) : bool = (* Implementation goes here. *)
  raise Fail "Unimplemented"  (* DELETE THIS LINE *)

(* TEST CASES *)
(* Write test cases here *)

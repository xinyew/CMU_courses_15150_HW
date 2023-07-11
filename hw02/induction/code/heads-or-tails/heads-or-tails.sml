(* heads : int * int list -> int
 * REQUIRES: true
 * ENSURES: heads (x, xs) ==> the largest n such that the first n elements of xs
 * are all equal to x
 *)
fun headsHelper (x : int, [] : int list, acc : int) = acc
  | headsHelper (x : int, y::ys : int list, acc : int) = 
    if x = y then
      headsHelper(x, ys, acc + 1)
    else
      acc

(* fun heads (x : int, xs : int list) : int = headsHelper (x, xs, 0) *)

fun heads (x : int, [] : int list) : int = 0
  | heads (x : int, y::ys : int list) : int =
    if x <> y then 
      0
    else
      1 + heads(x, ys)


(* TEST CASES *)
(* Uncomment to test *)
val () = Test.int ("heads: test case 1", 2, heads (1,[1,1,2,1,3]))
val () = Test.int ("heads: test case 2", 0, heads (2,[1,1,2,1,3]))
(* Write more test cases here *)


(* tails : int * int list -> int list
 * REQUIRES: true
 * ENSURES: tails (x, xs) ==> xs with the first k elements removed, where
 * k = heads (x, xs)
 *)
fun tailsHelper (x : int, [] : int list, acc : int list) = acc
  | tailsHelper (x : int, y::ys : int list, acc : int list) = 
    if x = y then
      tailsHelper (x, ys, acc)
    else
      y::ys
(* fun tails (x : int, xs : int list) : int list = tailsHelper (x, xs, []) *)

fun tails (x : int, [] : int list) : int list = []
  | tails (x : int, y::ys : int list) : int list =
    if x <> y then
      y::ys
    else
      tails(x, ys)


(* TEST CASES *)
(* Uncomment to test *)
val () = Test.int_list_eq ("tails: test case 1", [2,1,3], tails(1,[1,1,2,1,3]))
val () = Test.int_list_eq ("tails: test case 2", [1,1,2,1,3], tails(2,[1,1,2,1,3]))
val () = Test.int_list_eq ("tails: test case 3", [1,1,2,1,3], tails(2,[2,2,2,2,1,1,2,1,3]))
(* Write more test cases here *)


(* remove : int * int list -> int list
 * REQUIRES: true
 * ENSURES: remove (x, xs) ==> xs' such that xs' does not contain any element
 * y such that y = x, and xs' contains exactly all elements in xs except for x
 * in the same order as they were in xs
 *)
fun removeHelper (x : int, [] : int list, acc : int list) = acc
  | removeHelper (x : int, y::ys : int list, acc : int list) = 
    if x = y then
      removeHelper (x, ys, acc)
    else
      removeHelper(x,ys,acc @ [y])

(* fun remove (x : int, xs : int list) : int list = removeHelper(x,xs,[]) *)
fun remove (x : int, [] : int list) : int list = []
  | remove (x : int, y::ys : int list) : int list =
    if x <> y then
      y::remove(x,ys)
    else
      remove(x,ys)

(* TEST CASES *)
(* Uncomment to test *)
val () = Test.int_list_eq ("remove: test case 1", [2,3], remove(1,[1,1,2,1,3]))
val () = Test.int_list_eq ("remove: test case 2", [1,1,1,3], remove(2,[1,1,2,1,3]))
val () = Test.int_list_eq ("remove: test case 3", [1,5,1,5,0], remove(3,[1,5,1,5,0]))
(* Write more test cases here *)


(* partition : int * int list -> int list * int list
 * REQUIRES: true
 * ENSURES: partition (pivot, L) ==> (L1, L2) such that
 *          for all x in L1, x <= pivot and
 *          for all y in L2, pivot < y.
 *)
fun partition (pivot : int, [] : int list) : int list * int list = ([], [])
  | partition (pivot : int, x::xs : int list) : int list * int list =
    let
      val (i, j) = partition(pivot, xs)
    in
      if x <= pivot then
        (x::i, j)
      else
        (i, x::j)
    end


(* TEST CASES *)
(* Uncomment to test *)
val () =
  Test.int_list_int_list ("partition: test case 1", ([1,0],[3,4,5]), partition (2,[1,3,4,0,5]))

val () =
  Test.int_list_int_list ("partition: test case 2", ([1,2,3,0],[]), partition (3,[1,2,3,0]))
(* Write more test cases here *)

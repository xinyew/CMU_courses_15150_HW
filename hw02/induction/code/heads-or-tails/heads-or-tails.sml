(* heads : int * int list -> int
 * REQUIRES: true
 * ENSURES: heads (x, xs) ==> the largest n such that the first n elements of xs
 * are all equal to x
 *)
fun heads (x : int, xs : int list) : int =
  let
    y, ys = 
  in
    body
  end


(* TEST CASES *)
(* Uncomment to test *)
(* val () = Test.int ("heads: test case 1", 2, heads (1,[1,1,2,1,3])) *)
(* val () = Test.int ("heads: test case 2", 0, heads (2,[1,1,2,1,3])) *)
(* Write more test cases here *)


(* tails : int * int list -> int list
 * REQUIRES: true
 * ENSURES: tails (x, xs) ==> xs with the first k elements removed, where
 * k = heads (x, xs)
 *)
fun tails (x : int, xs : int list) : int list =
  raise Fail "Unimplemented"

(* TEST CASES *)
(* Uncomment to test *)
(* val () = Test.int_list_eq ("tails: test case 1", [2,1,3], tails(1,[1,1,2,1,3])) *)
(* val () = Test.int_list_eq ("tails: test case 2", [1,1,2,1,3], tails(2,[1,1,2,1,3])) *)
(* Write more test cases here *)


(* remove : int * int list -> int list
 * REQUIRES: true
 * ENSURES: remove (x, xs) ==> xs' such that xs' does not contain any element
 * y such that y = x, and xs' contains exactly all elements in xs except for x
 * in the same order as they were in xs
 *)
fun remove (x : int, xs : int list) : int list =
  raise Fail "Unimplemented"

(* TEST CASES *)
(* Uncomment to test *)
(* val () = Test.int_list_eq ("remove: test case 1", [2,3], remove(1,[1,1,2,1,3])) *)
(* val () = Test.int_list_eq ("remove: test case 2", [1,1,1,3], remove(2,[1,1,2,1,3])) *)
(* val () = Test.int_list_eq ("remove: test case 3", [1,5,1,5,0], remove(3,[1,5,1,5,0])) *)
(* Write more test cases here *)


(* partition : int * int list -> int list * int list
 * REQUIRES: true
 * ENSURES: partition (pivot, L) ==> (L1, L2) such that
 *          for all x in L1, x <= pivot and
 *          for all y in L2, pivot < y.
 *)
fun partition (pivot : int, L : int list) : int list * int list =
  raise Fail "Unimplemented"

(* TEST CASES *)
(* Uncomment to test *)
(* val () =
  Test.int_list_int_list ("partition: test case 1", ([1,0],[3,4,5]), partition (2,[1,3,4,0,5]))
 *)
(* val () =
  Test.int_list_int_list ("partition: test case 2", ([1,2,3,0],[]), partition (3,[1,2,3,0])) *)
(* Write more test cases here *)

(* flipOne: bool list -> bool list list
 * REQUIRES: true
 * ENSURES: flipOne L ==>* An ordered list containing all the ways to flip exactly
 *          one true to false.
 *)

fun flipOneHelper ([] : bool list, cur : bool list, acc : bool list list) : bool list list = acc
  | flipOneHelper (x::xs : bool list, cur : bool list, acc : bool list list) : bool list list =
    if x = true then
      acc @ [cur @ [false] @ xs] @ flipOneHelper(xs, cur @ [true], acc)
    else
      acc @ flipOneHelper(xs, cur @ [false], acc)

fun flipOne (L : bool list) : bool list list = flipOneHelper(L, [], [])

(* TEST CASES *)
(* Uncomment to test *)

(* Exactly one of the following two test cases should pass: *)
val () = Test.bool_list_list_eq ("two trues", [[false, true], [true, false]], flipOne [true, true])
(* val () = Test.bool_list_list_eq ("two trues", [[true, false], [false, true]], flipOne [true, true]) *)

(* Both of the following should pass: *)
val () = Test.bool_list_list_eq ("one true", [[false, false]], flipOne [false, true])
val () = Test.bool_list_list_eq ("no trues", [], flipOne [])

val () = Test.bool_list_list_eq ("three trues", [[false, true, true], [true, false, true], [true, true, false]], flipOne [true, true, true])

(* Write more test cases here *)

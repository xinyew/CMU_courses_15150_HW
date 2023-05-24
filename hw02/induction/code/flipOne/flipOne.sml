(* flipOne: bool list -> bool list list
 * REQUIRES: true
 * ENSURES: flipOne L ==>* An ordered list containing all the ways to flip exactly
 *          one true to false.
 *)
fun flipOne (L : bool list) : bool list list =
  raise Fail "Unimplemented"

(* TEST CASES *)
(* Uncomment to test *)

(* Exactly one of the following two test cases should pass: *)
(* val () = Test.bool_list_list_eq ("two trues", [[false, true], [true, false]], flipOne [true, true]) *)
(* val () = Test.bool_list_list_eq ("two trues", [[true, false], [false, true]], flipOne [true, true]) *)

(* Both of the following should pass: *)
(* val () = Test.bool_list_list_eq ("one true", [[false, false]], flipOne [false, true]) *)
(* val () = Test.bool_list_list_eq ("no trues", [], flipOne []) *)

(* Write more test cases here *)

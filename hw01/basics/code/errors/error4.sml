(* pi : real *)
val pi : real = 3.14159265358979

(* area : real -> real
 * REQUIRES: d >= 0
 * ENSURES: evaluates to the area of a circle with radius d *)
fun area (d : int) : real = pi * d * d

datatype exp
  = Var of string
  | Int of int
  | Add of exp * exp
  | Mul of exp * exp
  | Not of exp
  | IfThenElse of exp * exp * exp


type environ = (string * int) list

(* lookup : environ * string -> int
 * REQUIRES: (x,v) is in env, for some v
 * ENSURES: lookup (env,x) ==> v
 *)
fun lookup ([] : environ, y : string) = raise Fail "REQUIRES violated"
  | lookup ((x,v)::xs, y) = if x = y then v else lookup (xs,y)

(* vars : exp -> string list
 * REQUIRES: true
 * ENSURES: vars e ==> l, where l contains all vars in e
 *)
fun vars (Var x)              = [x]
  | vars (Int n)              = []
  | vars (Add (a,b))          = vars a @ vars b
  | vars (Mul (a,b))          = vars a @ vars b
  | vars (Not a)              = vars a
  | vars (IfThenElse (i,t,e)) = vars i @ vars t @ vars e


(* eval : environ * exp -> int
 * REQUIRES: All variables in e have one entry in env.
 * ENSURES: eval (env,e) ==> n, where n is the integer representing
 * the value of e given environment env.
 *)
fun eval (env : environ, e : exp) : int = raise Fail "Unimplemented"

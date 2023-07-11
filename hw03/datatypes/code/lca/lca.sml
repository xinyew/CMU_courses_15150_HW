datatype tree = Empty | Node of tree * int * tree

datatype direction = LEFT | RIGHT

(* find : tree * int -> direction list option
 * REQUIRES: T contains no duplicates
 * ENSURES: find (T, v) => NONE if v is not in T, else
 *  SOME L, where L is a list of directions that can be used to traverse
 *  from the root of T to v
 *)
fun find (T : tree, v : int) : direction list option =
    raise Fail "Unimplemented"

(* follow : tree * direction list -> tree option
 * REQUIRES: true
 * ENSURES: follow (T, L) => NONE if traversing T according to the directions
 *   in L do not lead to a valid subtree of T, else SOME T', where T' is the
 *   subtree of T that is obtained by traversing T according to L
 *)
fun follow (T : tree, L : direction list) : tree option =
    raise Fail "Unimplemented"

(* common : direction list * direction list -> direction list
 * REQUIRES: true
 * ENSURES: common (L1, L2) => L, where L contains the longest prefix
 *   that is common to both L1 and L2
 *)
fun common (L1 : direction list, L2 : direction list) : direction list =
    raise Fail "Unimplemented"

(* lca : tree * int * int -> tree option
 * REQUIRES: T contains no duplicates, a <> b
 * ENSURES: lca (T,a,b) => NONE if a or b is not in T, else
 *   SOME (Node (L,x,R)) such that Node(L,x,R) is a subtree of T and either:
 *             - a is in L and b is in R
 *             - b is in L and a is in R
 *             - a = x and b is in L or R
 *             - b = x and a is in L or R
 *)
fun lca (T : tree, a : int, b : int) : tree option =
    raise Fail "Unimplemented"

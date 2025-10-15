(*
- one of several possibilities
- individual names called constructors
*)

(* Days of the week *)
type days = Mon | Sun | Tue | Wed | Thu | Fri | Sat

(* Shape *)
type shape = 
        | Circle of float
        | Rectangle of float * float 
        | Triangle of float * float * float
let area s = 
        match s with 
        | Circle r -> 3.14 *. r *. r
        | Rectangle (x, y) -> x *. y
        | Triangle (a, b ,c) -> 
                let s = (a +. b +. c) /. 2.0
                in 
                sqrt (s *. (s -. a) *. (s -. b) *. (s -. c))

(* Expr *)
type expr =
        | Num of float 
        | Add of float * float
        | Sub of float * float
        | Mul of float * float
        | Div of float * float

let computation s = 
        match s with 
        | Num s -> s
        | Add (x ,y) -> x +. y
        | Sub (x, y) -> x -. y
        | Mul (x, y) -> x *. y
        | Div (x ,y) -> x /. y



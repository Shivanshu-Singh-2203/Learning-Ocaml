(* Calculator in OCaml *)

type expr =
  | Add of int * int
  | Sub of int * int
  | Mul of int * int
  | Div of int * int

exception Divide_by_zero

(* Evaluation function *)
let eval e =
  match e with
  | Add (x, y) -> x + y
  | Sub (x, y) -> x - y
  | Mul (x, y) -> x * y
  | Div (x, y) ->
      if y = 0 then raise Divide_by_zero
      else x / y

(* Safe evaluation that returns an option *)
let safe_eval e =
  try Some (eval e)
  with Divide_by_zero -> None

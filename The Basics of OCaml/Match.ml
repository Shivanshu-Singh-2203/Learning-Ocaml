(* 
match in OCaml
- like switch in C *)
let x = 
  match not true with
  | true -> "nope"
  | false -> "yep"

let z = 
  match "foo" with
  | "bar" -> 0
  | _ -> 1

(* using with structured data*)

let emptList = 
  match [1;2] with
  | [] -> "empty"
  | _ -> "not empty"

(* first element in the list *)
let b = 
  match ["taylor"; "swift"] with
  | [] -> "folklore" 
  | h :: t -> h

(*  first of 3 element tuples *)
let fst3 t= 
  match t with
  | (a, b, c) -> a

(* empty list with boolean *)
let empty list = 
  match list with
  | [] -> true
  | _ -> false

(* summing element in the list *)
let rec sum list =
  match list with
  | [] -> 0
  | h :: t -> h + sum t;;

(* length of the list *)
let rec len list = 
  match list with
  | [] -> 0
  | h :: t -> 1 + len t ;; 

(* appending to a list *)
let rec append list1 list2 = 
  match list1 with
  | [] -> list2
  | h :: t -> h :: append t list2
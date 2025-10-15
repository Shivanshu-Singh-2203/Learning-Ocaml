(* tuples_example.ml *)

(* Creating tuples *)
let pair = (1, "hello")          
let triple = (true, 3.14, "ocaml")

(* Accessing tuple elements via pattern matching *)
let (x, y) = pair
let (b, f, s) = triple

(* Sum elements of a pair of integers *)
let sum_pair (a, b) = a + b

(* Swap elements of a pair *)
let swap (a, b) = (b, a)

(* Max element of a triple of ints *)
let max_triple (a, b, c) =
  let m = if a > b then a else b in
  if m > c then m else c

(* List of tuples *)

let students = [("Alice", 85); ("Bob", 92); ("Charlie", 78)]


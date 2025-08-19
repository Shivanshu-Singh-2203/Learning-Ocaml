(* === Variables and Expressions in OCaml === *)

(* 1. Immutable variables *)
let x = 10
let y = 20

(* 2. Expressions: everything in OCaml is an expression *)
let sum = x + y          (* arithmetic expression *)
let is_even = (x mod 2 = 0)  (* boolean expression *)

(* 3. Shadowing: reusing the same name creates a new binding *)
let x = x + 5    (* now x = 15, old x = 10 is shadowed *)

(* 4. If-expression (not statement) *)
let max_val = if x > y then x else y

(* 5. Match-expression *)
let description =
  match max_val with
  | 0 -> "zero"
  | n when n mod 2 = 0 -> "even"
  | _ -> "odd"

(* 6. Tuples as expressions *)
let pair = (x, y)
let triple = (x, y, sum)

(* 7. Lists as expressions *)
let nums = [1; 2; 3; 4; 5]
let more_nums = 0 :: nums  (* cons operator *)

(* 8. Local bindings with "let ... in" *)
let squared_sum =
  let a = 3 in
  let b = 4 in
  (a + b) * (a + b)

(* 9. Expression sequencing with ";" *)
let _ =
  print_endline "First expression";
  print_endline "Second expression"

(* === Usage examples === *)
let () =
  Printf.printf "x = %d, y = %d\n" x y;
  Printf.printf "sum = %d\n" sum;
  Printf.printf "Is x even? %B\n" is_even;
  Printf.printf "max_val = %d\n" max_val;
  Printf.printf "description = %s\n" description;
  let (a, b) = pair in
  Printf.printf "pair = (%d, %d)\n" a b;
  Printf.printf "triple = (%d, %d, %d)\n" (let (a,b,c) = triple in a) (let (_,b,_) = triple in b) (let (_,_,c) = triple in c);
  Printf.printf "nums = ";
  List.iter (fun n -> Printf.printf "%d " n) nums;
  print_newline ();
  Printf.printf "squared_sum = %d\n" squared_sum

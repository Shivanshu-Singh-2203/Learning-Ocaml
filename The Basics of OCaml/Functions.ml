(* === Functions in OCaml: A Big Example === *)

(* 1. Recursion: factorial *)
let rec factorial n =
  match n with
  | 0 -> 1
  | n -> n * factorial (n - 1)

(* 2. Partial application: add a constant *)
let add x y = x + y
let add5 = add 5   (* partial application: add5 y = 5 + y *)

(* 3. Polymorphism: 'a list length function *)
let rec length lst =
  match lst with
  | [] -> 0
  | _ :: t -> 1 + length t
(* works for int list, string list, etc. *)

(* 4. Functions as operators: define a custom operator for power *)
let ( ** ) base exp =
  let rec pow b e =
    if e = 0 then 1 else b * pow b (e - 1)
  in pow base exp

(* 5. Lambdas: anonymous functions *)
let square = fun x -> x * x
let cube = (fun x -> x * x * x)

(* 6. Higher-order function: map with lambdas *)
let rec my_map f lst =
  match lst with
  | [] -> []
  | h :: t -> (f h) :: my_map f t

(* === Usage examples === *)
let () =
  Printf.printf "Factorial of 5 = %d\n" (factorial 5);
  Printf.printf "10 + 5 = %d\n" (add5 10);
  Printf.printf "Length of [1;2;3;4] = %d\n" (length [1;2;3;4]);
  Printf.printf "Length of [\"a\"; \"b\"; \"c\"] = %d\n" (length ["a"; "b"; "c"]);
  Printf.printf "2 ** 5 = %d\n" (2 ** 5);
  Printf.printf "Square of 7 = %d\n" (square 7);
  Printf.printf "Cube of 3 = %d\n" (cube 3);
  let doubled = my_map (fun x -> 2 * x) [1;2;3;4] in
  List.iter (fun n -> Printf.printf "%d " n) doubled;
  print_newline ()

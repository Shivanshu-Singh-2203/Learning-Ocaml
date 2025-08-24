(* 1. Cube a number *)

let cube x = x*x*x;;

(* 2. Factorial *)
let rec factorial x = 
	match x with 
	| 0 -> 1
	| x -> x * factorial(x-1)

(* 3. Even or Odd *)
let isEven x =
	let var = x mod 2 in 
	match var with
	| 0 -> "even"
	| _ -> "odd"

(* 4. Add 12% VAT*)
let total price = price +. (price *. 12.0 /. 100.0)

(* 5. Add digits*)
let rec sum n =
	if n = 0 then 0
	else (n mod 10) + sum (n/10);;

(* 6. In the list *)
let rec inList list element =
	match list with 
		| [] -> false
		| h :: t -> 
			if h = element then true
			else inList t element
(* 7. Count Occurences *)
let rec count list element = 
	match list with
		| [] -> 0
		| h :: t ->
			if h = element then 1 + count t element
			else count t element

(* 8. Exponent *)
let rec pow base exp =
	if exp = 0 then 1
	else if exp > 0 then base * pow base (exp - 1)
	else 1 / pow base (-exp) 

(* 9. n the fibonacci *)
let rec fibonacci n = 
	match n with 
	| 0 -> 1
	| 1 -> 1
	| _ -> fibonacci (n - 1) + fibonacci(n-2) 

(* 10. gcd using Euclid's algorithm *)
let rec gcd a b =
	match b with 
	| 0 -> a
	| _ -> gcd b (a mod b)


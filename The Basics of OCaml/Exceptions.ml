(* 
Exceptions 
- built in extensible variant
*)

(* 
Exception Failure of string : failwith : string -> 'a
Exception invalid argument of string : invalid_arg : string -> 'a
*)

(* Raising Exceptions *)
exception OhmyString of string


(* Handling Exceptions *)

let safe_div x y = 
	try x / y with 
	| Division_by_zero -> 0

(* Try expressions
try e with 
	| p1 -> e1
	| p2 -> e2
*)
 

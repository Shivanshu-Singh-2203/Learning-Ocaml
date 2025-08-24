(* 
Options
- a type constructor like list
- it creates a type but it is not a type
- for any type t, we can write t option as a type
- None has type 'a
*)

(* function that converts an int from an non empty option to a string *)
let extract o =
	match o with 
	| Some i -> string_of_int i
	| None -> ""

(* List max using option *)
let rec list_max = function
	| [] -> None
	| h :: t -> begin
		match list_max t with 
		| None -> Some h
		| Some m -> Some (max h m)
		end 

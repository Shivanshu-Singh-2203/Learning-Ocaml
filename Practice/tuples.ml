(* 1. Define Tuple *)
type student = string* string* int

(* 2. Extracting Second Element *)
(* Define a tuple *)
let student = ("Shivanshu", 95, 101);;

(* Extract the second element (marks) *)
let marks = 
  let (_, m, _) = student in m;;

(* Print the marks *)
print_int marks;;



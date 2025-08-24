(* 1. Student records *)

type student = {
	name : string;
	age : int;
	grade : char;
}

(* 2. Create student instance *)
let shivanshu = {
	name = "Shivanshu Singh";
	age = 20;
	grade = 'A';
}

(* 3. Access Student name *)
let student_name = shivanshu.name;;
print_endline student_name ;;

(* Update Student Grade *)
shivanshu.grade = 'S';;
print_endline ("Shivanshu's Grade : " ^ Char.escaped shivanshu.grade );;

(* 5. isAdult *)
let is_Adult student = 
	if student.age < 18 then "You are not adult. "
	else "You are now an adult. "

(* 6. point Record *)
type point = {
	x : float;
	y : float;
}

let origin = {
	x = 0.0;
	y = 0.0;
}

(* 7. Distance function *)
let distance p1 p2 =
  let dx = p1.x -. p2.x in
  let dy = p1.y -. p2.y in
  sqrt (dx *. dx +. dy *. dy)

(* 8. Mid point of two points *)
let mid p1 p2 : point = { 
	x = (p1.x +. p2.x ) /. 2.0 ;
        y = (p1.y +. p2.y ) /. 2.0 ;
}
	
(* 9. Rectangle *)
type rectangle = {
	length : float;
	breadth : float;
}

(* 10. Area of rectangle *)
let area p = p.length *. p.breadth

(* 11. Complex Numbers *)
type complex = {
	real : float ;
	img : float ;
}

(* 12. Add complex numbers *)
let add c1 c2 : complex = {
	real = c1.real +. c2.real ;
	img  = c1.img +. c2.img ;
}

(* 13. Multiply complex Numbers *)
let multiply c1 c2 : complex = {
	real = c1.real *. c2.real -. c1.img *. c2.img ;
	img = c1.img *. c2.real +. c1.real *. c2.img ;
}


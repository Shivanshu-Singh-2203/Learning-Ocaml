(* 
Using Variants in Ocaml
- Constructor may carry data
- It must be in CAPITAL
- Constant varaints are those which do not  carry data with it
- Non constant variants are those which carry data with it*)


type primary_color = Red | Green | Blue

let r  =Red

type point = float * float

type shapes = 
  | Circle of {center : point; radius : float}
  | Rectangle of {lower_left : point; upper_right : point}
  | Point of point
let c1 = Circle{ center = (0., 0.); radius = 1.}
let r1 = Rectangle{lower_left = (-1.,1.); upper_right= (1.,1.)}
let p = Point(31.,10.)

let avg a b =
  (a +. b)/.2.

(* finding center of circle and rectangle *)
let center s = 
  match s with
  | Circle {center; radius} -> center
  | Rectangle {lower_left; upper_right} ->
    let (a, b) = lower_left in
    let (c, d) = upper_right in 
    (avg a c, avg b d)
  | Point p -> p


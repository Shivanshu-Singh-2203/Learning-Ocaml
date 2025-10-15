(* List *)

(* Sum *)

let rec sum = function
        | [] -> 0
        | h :: t -> h + sum t

(* Maximum element *)

let rec max_elem lst = 
        match lst with 
        | [] -> None
        | [x] -> Some x
        | x :: xs -> 
                match max_elem xs with 
                | None -> Some x
                | Some m -> Some (if x > m then x else m )

(* Minimum element *)
let rec min_elem = function 
        | [] -> None
        | [h] -> Some h 
        | h :: t -> 
                match min_elem t with 
                | None -> Some h 
                | Some temp -> 
                        if temp > h then Some h 
                        else Some temp

(* Product of all elements *)
let rec prod = function 
        | [] -> 0
        | [h] -> h 
        | h :: t -> h * prod t

(* Contains an element *)

let rec contains elem = function 
        | [] -> false
        | h :: t -> 
        if h = elem then true
        else contains elem t

(* Reversing a list *)
let rec rev = function
        | [] -> []
        | h :: t -> (rev t)@ [h]

(* Remove element *)
let rec remove elem= function
        | [] -> []
        | h :: t -> 
                if h = elem then remove elem t 
                else h :: (remove elem t) 

(* is Sorted *)
let rec isSorted = function 
        | [] -> true
        | [_] -> true
        | h1 :: (h2 :: _ as t ) -> 
                if h1 > h2 then false else isSorted t

(* nth element *)
let rec at k = function 
        | [] -> None
        | h :: t ->
                if k = 0 then Some h else at (k -1) t



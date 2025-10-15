(* Pallindrome list *)
let rec rev l v = 
        match v with
        | [] -> l 
        | h :: t -> rev (h :: l) t

(* Remove duplicates *)

let rec notInList list element = 
        match list with 
        | [] -> true
        | h :: t -> if h = element then false else notInList t element

let rec compress  = function 
        | [] -> []
        | h :: t -> if (notInList t h) then h :: compress t else compress t



(* Defining tree *)

type 'a tree =
        | Leaf
        | Node of 'a * 'a tree * 'a 

type 'a mylist = 
        | Nil 
        | Cons of 'a * 'a mylist 

type 'a anothertree = 
        | Nil 
        | Node of 'a node

        and 
        'a node = {
        root : 'a ;
        left : 'a tree;
        right : 'a tree ;
}


(* 
Records 
- elements are called fields
- fields are accessed using dot operator
- order is irrelevant
- fields are unique
*)

type degree = BTech | MTech | Phd 

type student = {
        name : string;
        degree : degree;
        rollNo : int ;
} 

(* Making an instance of the record *)
let shivam = {
        name = "Shivanshu";
        degree = BTech;
        rollNo = 1142;
}

(* For copying a record *)
let shivanshu = {shivam with name = "Shivam"; degree = MTech}

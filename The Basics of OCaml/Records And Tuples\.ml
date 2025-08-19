(* 
Records in Ocaml
- Represented as { f1 = e1; f2 = e2} where  f1 and f2 are field.
- Order of field is irrevelant
- Any number of fields is permitted from 1 upto 4 million.
- e,f access field f of a record expression e
- field names are identifiers not expressions.
- elements are accessed with "records.field".
- "{ e with f1 = e1}" creates acopy of record e with new field value f1
- This is not mutation. SO we can not change type of the fields.
*)

type records = {
    name : string;
    year : int;
}

let shivanshu = {
    name = "Shivanshu singh";
    year = 2027;
}

(* 
Tuples in Ocaml
- In tuples order is relevant.
- for tuples consisting of two numbers, elements can be excessed with fst and snd to get first and second respectively
 *)
type time = int * int *string

let t : time = (10, 10, "am")

type point = float* float ;;
let p : point = (5.0, 2.0);;

(* Pattern Matching *)

let x = 
    match not true with
    | true -> "nope"
    | false -> "yep"


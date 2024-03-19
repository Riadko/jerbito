(* Q1 *)
(* 
let first a = match a with (x, _) -> x;;
let second a = match a with (_, y) -> y;; 
*)
let first (x, _) = x
let second (_, y) = y
(* Q2 *)
let sum (a1, b1) (a2, b2) = (a1 + a2, b1 ^ b2);;
(* Q3 *)
let suffix_prefix str c =
let len = String.length str in
try
  let index = String.index str c in
  let prev = if index > 0 then Some str.[index - 1] else None in
  let next = if index < len - 1 then Some str.[index + 1] else None in
  (prev, next)
with Not_found -> (None, None);;
(* Q4 *)
let rec zip l1 l2 = match l1, l2 with
| [], [] -> []
| [], _ | _, [] -> raise (Invalid_argument "Listes de taille différente")
| x::xs, y::ys -> (x, y) :: zip xs ys

let rec unzip l = match l with
| [] -> ([], [])
| (x, y)::xs -> 
    let (l1, l2) = unzip xs in
    (x::l1, y::l2)
(* Q5 *)
exception Empty

let rec min_max = function
| [] -> raise Empty
| [x] -> (x, x)
| x :: xs -> 
    let (min_val, max_val) = min_max xs in
    (min x min_val, max x max_val)

exception Empty

let min_max lst =
  match lst with
  | [] -> raise Empty
  | hd :: tl ->
      List.fold_left (fun (min_val, max_val) x -> (min x min_val, max x max_val)) (hd, hd) tl
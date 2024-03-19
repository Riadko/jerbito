(* Question 1 *)
let last lst =
  match List.rev lst with
  | [] -> failwith "Vide"
  | hd::_ -> hd
(* Question 2 *)
let swap lst =
  match lst with
  | [] | [_] -> lst
  | x::y::tl -> y::x::tl
(* Question 3 *)
let repeat elem n =
  if n < 0 then [] else List.init n (fun _ -> elem)
(* Question 4 *)
let range_i i j =
  if i > j then []
  else List.init (j - i + 1) (fun x -> i + x)
(* Question 5 *)
let decr_list lst =
  List.map (fun x -> x - 1) lst
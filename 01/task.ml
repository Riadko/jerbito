(* task/Définitions de fonctions -1 *)
let char_succ c = 
if c < '\255' then
  c|> int_of_char |> succ |> char_of_int
  else
    '\000';;
(* task/Définitions de fonctions -2 *)
let string_cons c s =
           String.make 1 c ^ s
(* task/Définitions locales -1 *)
let _ =
  let a = int_of_string "81" in
    let b = float_of_int a in
      let c = sqrt b in
        let d = int_of_float c in
          d
(* task/Définitions locales -2 *)
let _ =
  let cr = "cream" in
    let i_u_we = "I scream, you scream, we all scream" in
      i_u_we ^ " for ice " ^ cr
(* task/Définitions locales -2 v2 *)
let _ =
  let cr = "cream" in
    let i_u_we =
      let sr = string_cons 's' cr in
        "I " ^ sr ^ ", you " ^ sr ^ ", we all "^ sr in
          i_u_we ^ " for ice " ^ cr
(* task/Fonctions récursives -1 *)

  let char_range lo hi =
    let rec char_range_helper current end_char acc =
      if current > end_char then acc
      else char_range_helper (char_succ current) end_char (acc ^ String.make 1 current)
    in
    char_range_helper lo hi ""
(* task/Fonctions récursives -2 *)
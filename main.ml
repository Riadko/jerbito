print_char(M01.Task.char_succ 'a');;
(* print_newline ();;
print_string(M01.Task.string_cons 'a' "bcd");; *)
print_newline ();;
print_string(M01.Task.char_range 'a' 'v');;
print_newline ();;
(* print_string(M01.Task.char_range_rev_cat "123" 'a' 'd');;
print_newline ();; *)
print_string("-------------");;
print_newline ();;
(* Q1 *)
print_int(M02.Tesk.last [1;2;3;4;5]);;
print_newline ();;
(* Q2 *)
let () =
  let result = M02.Tesk.swap [1;2;3;4;5] in
  List.iter print_int result;
  print_newline () in
(* Q3 *)
print_string(String.concat "" (M02.Tesk.repeat "Bonjour " 3));;
print_newline();
(* Q4 *)
List.iter (fun x -> print_int (x)) (M02.Tesk.range_i 3 6);;
print_newline();
(* Q5 *)
List.iter (fun x -> print_int (x)) (M02.Tesk.decr_list [1;2;3;4;5]);;
print_newline();
print_string("-------------");;
print_newline ();;
(* Q1 *)
print_float(M05.Task.valeur_fin_de_partie Defaite);;
print_newline();
(* Q2 *)
print_string("Weekend : ");
Printf.printf "%b" (M05.Task.weekend Dimanche);;
(* M05.Task.print_bool(M05.Task.weekend Dimanche);;*)
print_newline();
(* Q3 *)
print_string (M05.Task.etat_string(M05.Task.action_suivante Dodo));;
print_newline();
print_string("Est rouge : ");
Printf.printf "%b" (M05.Task.est_rouge(Carte(Trois, Pique)));;
print_newline();
print_string("Est une tete : ");
Printf.printf "%b" (M05.Task.est_une_tete(Carte(Trois, Coeur)));;
print_newline();
print_string("Score normal : ");
print_int(M05.Task.score_normal(Carte(As, Coeur)));;
print_newline();
print_string("Score atout : ");
print_int(M05.Task.score_atout(Carte(As, Coeur)));;
print_newline();
print_string("-------------");;
print_newline();
print_string("First : ");
print_int(M04.Task.first (3, 9));;
print_newline();
print_string("Second : ");
print_int(M04.Task.second (1, 5));;
print_newline();
let (a, b) = M04.Task.sum (1, "Bon") (2, "jour") in
print_string (string_of_int a ^ ", " ^ b);;
print_newline();
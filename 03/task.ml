(* Type énumérés *)
(* Q1 *)
type fin_de_partie =
  | Victoire
  | Nul
  | Defaite

let valeur_fin_de_partie = function
  | Victoire -> 1.0
  | Nul -> 0.5
  | Defaite -> 0.0
(* Q2 *)
let print_bool b = 
if b then print_string "true" else print_string "false"

type semaine =
  | Samedi | Dimanche | Lundi | Mardi | Mercredi | Jeudi | Vendredi
  
let weekend = function
  | Samedi -> true
  | Dimanche -> true
  | _ -> false
(* Q3 *)
type daily_routine =
| Metro | Boulot | Dodo | Vacance

let action_suivante etat = match etat with
| Metro -> Boulot
| Boulot -> Dodo
| Dodo -> Vacance
| Vacance -> Metro

let etat_string = function
| Metro -> "Metro"
| Boulot -> "Boulot"
| Dodo -> "Dodo"
| Vacance -> "Vacance"
(* Q6 *)
type couleur = Pique | Coeur | Carreau | Trefle

type valeur = As | Deux | Trois | Quatre | Cinq | Six | Sept | Huit | Neuf | Dix | Valet | Dame | Roi

type carte_a_jouer = Carte of valeur * couleur

let est_rouge = function
  | Carte(_, Coeur) | Carte(_, Carreau) -> true
  | _ -> false

let est_une_tete = function
  | Carte(Valet, _) | Carte(Dame, _) | Carte(Roi, _) -> true
  | _ -> false

let score_normal = function
  | Carte(As, _) -> 11
  | Carte(Roi, _) -> 4
  | Carte(Dame, _) -> 3
  | Carte(Valet, _) -> 2
  | _ -> 0

let score_atout = function
  | Carte(As, _) -> 19
  | Carte(Dix, _) -> 10
  | Carte(Roi, _) -> 14
  | Carte(Dame, _) -> 13
  | Carte(Valet, _) -> 20
  | _ -> 0

(* Constructeurs avec données *)
(* Q *)
type nombre = Entier of int | Flottant of float

let somme a b = match a, b with
  | Entier x, Entier y -> Entier (x + y)
  | Flottant x, Flottant y -> Flottant (x +. y)
  | Entier x, Flottant y | Flottant y, Entier x -> Flottant (float_of_int x +. y)
  
let division a b = match a, b with
  | Entier x, Entier y -> if x mod y = 0 then Entier (x / y) else Flottant (float_of_int x /. float_of_int y)
  | Flottant x, Flottant y -> Flottant (x /. y)
  | Entier x, Flottant y | Flottant y, Entier x -> Flottant (float_of_int x /. y)

type temperature = Celsius of float | Fahrenheit of float

(* Types enregistrements (ou produit) *)

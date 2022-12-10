(** Representation of the cube itself.
    Type [dune utop] in terminal to run code*)

type color
(** [color] is the type of each of the colors of a Rubik's Cube. *)

type face = color array
(** [face] is type of a face of of a Rubik's Cube.
    For 3x3: Indices 0-8 of a face array represent the following
    0 = bottom left of face
    1 = bottom middle of face
    2 = bottom right of face
    3 = middle left of face
    4 = center of face
    5 = middle right of face
    6 = top left of face
    7 = top middle of face
    8 = top right of face 
    For 2x2: Indices 0-3 of a face array represent the following
    0 = bottom left of face
    1 = bottom right of face
    2 = top left of face
    3 = top right of face
*)

type cube_type = face array
(** [cube_type] is type of the Rubik's Cube. *)

val cube_rep : face array
(** [cube_rep] is the Rubik's Cube in the simulation. *)

val cube_rep2 : face array
(** [cube_rep2] is the 2x2 Rubik's Cube in the simulation. *)

val solve : unit -> color array array
(** [solve ()] returns a solved 3x3 cube. *)

val solve2 : unit -> color array array
(** [solve2 ()] returns a solved 2x2 cube. *)

val draw_2dcube : face -> int -> int -> unit
(** [draw_2dcube face x y] draws a [face] of the Rubik's Cube center at [x, y] *)

val draw : cube_type -> unit
(** [draw cube] the 3x3 Rubik's Cube*)

val draw2 : cube_type -> unit
(** [draw2 cube] the 2x2 Rubik's Cube*)

val draw_3d : cube_type -> unit
(** [draw_3d cube] the 3x3 Rubik's Cube from a 3 dimensional view*)

val draw2_3d : cube_type -> unit
(** [draw2_3d cube] the 2x2 Rubik's Cube from a 3 dimensional view*)

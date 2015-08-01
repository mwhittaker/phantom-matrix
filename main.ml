open LinAlg

let this_shouldn't_compile () : unit =
  (* Uncomment the following code, then try to build and run this file. *)

  (*
  let m = Mat.(
    nil %
    Vec.(nil % 1. % 2. % 3.) % (* [1, 2, 3; *)
    Vec.(nil % 4. % 5. % 6.)   (*  4, 5, 6] *)
  ) in

  let m' = Mat.(
    nil %
    Vec.(nil % 7.  % 8.  % 9.)  % (* [7,  8,  9;   *)
    Vec.(nil % 10. % 11. % 12.) % (*  10, 11, 12;  *)
    Vec.(nil % 13. % 14. % 15.)   (*  13, 14, 15]  *)
  ) in

  ignore (Mat.(m + m'));
  *)

  (* You'll find that when you try to compile the code, it will print the
   * following error:
   *
   *   Error: This expression has type (zero succ succ succ, zero succ succ succ) t
   *          but an expression was expected of type
   *            (zero succ succ, zero succ succ succ) t
   *          Type zero succ is not compatible with type zero
   *
   * If we replace our Peano encoded number types with more familiar names, this
   * error message becomes more relatable.
   *
   *   Error: This expression has type (three, three) t
   *          but an expression was expected of type
   *            (two, three) t
   *          Type one is not compatible with type zero
   *
   * In other words, the compiler is telling us that adding a 2x3 matrix to a
   * 3x3 matrix is not well-typed!
   *)
  ()

let main () : unit =
  let m = Mat.(
    nil %
    Vec.(nil % 1. % 2. % 3.) % (* [1, 2, 3; *)
    Vec.(nil % 4. % 5. % 6.)   (*  4, 5, 6] *)
  ) in

  let m' = Mat.(
    nil %
    Vec.(nil % 7.  % 8.  % 9.) % (* [7,  8,  9;  *)
    Vec.(nil % 10. % 11. % 12.)  (*  10, 11, 12] *)
  ) in

  let m'' = Mat.(
    nil %
    Vec.(nil % 8.  % 10. % 12.) % (* [8,  10, 12; *)
    Vec.(nil % 14. % 16. % 18.)   (*  14, 16, 18] *)
  ) in

  Printf.printf "m + m' = m'' is %b\n" Mat.(m + m' = m'')

let () = main ()

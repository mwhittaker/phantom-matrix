type zero
type 'a succ

module type VEC = sig
  type 'n t
  val nil: zero t
  val (%): 'n t -> float -> 'n succ t
  val (+): 'n t -> 'n t -> 'n t
end

module Vec : VEC = struct
  type 'n t = float list
  let nil = []
  let (%) v x = v @ [x]
  let (+) u v = List.map2 (+.) u v
end

module type MAT = sig
  type ('n, 'm) t
  val nil: (zero, 'm) t
  val (%): ('n, 'm) t -> 'm Vec.t -> ('n succ, 'm) t
  val (+): ('n, 'm) t -> ('n, 'm) t -> ('n, 'm) t
end

module Mat : MAT = struct
  type ('n, 'm) t = 'm Vec.t list
  let nil = []
  let (%) m v = m @ [v]
  let (+) x y = List.map2 Vec.(+) x y
end

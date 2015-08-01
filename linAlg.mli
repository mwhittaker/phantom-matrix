type zero
type 'a succ

module type VEC = sig
  type 'n t
  val nil: zero t
  val (%): 'n t -> float -> 'n succ t
  val (+): 'n t -> 'n t -> 'n t
end

module Vec : VEC

module type MAT = sig
  type ('n, 'm) t
  val nil: (zero, 'm) t
  val (%): ('n, 'm) t -> 'm Vec.t -> ('n succ, 'm) t
  val (+): ('n, 'm) t -> ('n, 'm) t -> ('n, 'm) t
end

module Mat : MAT

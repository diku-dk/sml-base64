(** Library for base64 encoding and decoding. *)

signature BASE64 = sig
  val encode : string -> string
  val decode : string -> string option
end

(**

[encode s] returns a base64-encoded representation of the string s.

[decode s] returns SOME v if s is the base64-encoded representation of
the string v. Returns NONE if s does not represent an encoded string.

*)

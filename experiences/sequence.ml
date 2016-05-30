(*
 * Experience about Typed Narration
 *
 * Copyright (C) 2015  Xavier Van de Woestyne <xaviervdw@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
*)

module NarrativeStep : sig

  type (-'current, -'next) t

  val followed_by : ('a, 'b) t -> ('b, 'c) t -> ('b, 'c) t
  val (-->) : ('a, 'b) t -> ('b, 'c) t -> ('b, 'c) t

  val first :  string -> ([<`first], [<`middle]) t
  val middle : string -> ([<`middle], [< `middle | `stop]) t
  val last : string -> ([< `stop], [<`void]) t


end = struct

  type ('current, 'next) t = string

  let followed_by a b = b
  let ( --> ) = followed_by

  let first x = x
  let middle x = x
  let last x = x

end

include NarrativeStep

let _ =
  first "Adventure step 1"
  --> middle "Adventure step 2"
  --> middle "Adventure step 3"
  --> last "End of the adventure (step 4)"

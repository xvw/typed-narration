(*
 * Experience about Typed Narration
*  This source code is just experimentation, not a structured project
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

module Functions :
sig

  type (-'current, -'next) t
  val followed_by : ('a, 'b) t -> ('b, 'c) t -> ('b, 'c) t
  val (-->) : ('a, 'b) t -> ('b, 'c) t -> ('b, 'c) t

end = struct

  type ('current, 'next) t = string

  let followed_by a b = b
  let ( --> ) = followed_by

  let a s = s
  let a' s = s
  let b s = s
  let c s = s
  let departure s = s
  let d s = s
  let e s = s
  let f s = s
  let g s = s
  let h s = s
  let i s = s
  let j s = s
  let k s = s
  let return s = s
  let pr s = s
  let rs s = s
  let o s = s
  let l s = s
  let m s = s
  let n s = s
  let q s = s
  let ex s = s
  let t s = s
  let u s = s
  let w s = s

end

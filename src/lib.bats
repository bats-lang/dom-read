(* dom-read -- DOM measurement and querySelector *)

#include "share/atspre_staload.hats"

#use array as A
#use wasm.bats-packages.dev/bridge as B
#use result as R

#pub fun measure
  (node_id: int): $R.result(int, int)

#pub fun get_x(): int

#pub fun get_y(): int

#pub fun get_w(): int

#pub fun get_h(): int

#pub fun get_scroll_w(): int

#pub fun get_scroll_h(): int

#pub fun query_selector
  {lb:agz}{n:pos}
  (sel: !$A.borrow(byte, lb, n), sel_len: int n): $R.option(int)

implement measure(node_id) = $B.measure(node_id)

implement get_x() = $B.get_measure_x()
implement get_y() = $B.get_measure_y()
implement get_w() = $B.get_measure_w()
implement get_h() = $B.get_measure_h()
implement get_scroll_w() = $B.get_measure_scroll_w()
implement get_scroll_h() = $B.get_measure_scroll_h()

implement query_selector{lb}{n}(sel, sel_len) =
  $B.query_selector(sel, sel_len)

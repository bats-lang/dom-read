# dom-read

DOM measurement and querying primitives. `measure` caches the bounding-rect
of a node; the six getters return the cached values. `query_selector` finds
an element by CSS selector.

## API

```
#use wasm.bats-packages.dev/dom-read as DR
#use array as A

(* Measure a DOM node — returns 1 if found, 0 otherwise.
   Results are cached for the get_* calls below. *)
$DR.measure(node_id: int) : int

(* Cached measurement getters *)
$DR.get_x()    : int
$DR.get_y()    : int
$DR.get_w()    : int
$DR.get_h()    : int
$DR.get_scroll_w() : int
$DR.get_scroll_h() : int

(* Query a DOM element by CSS selector.
   Returns node_id if found, -1 otherwise. *)
$DR.query_selector{lb:agz}{n:pos}
  (selector: !A.borrow(byte, lb, n), selector_len: int n) : int
```

OCaml xxHash bindings
=====================

Installation
------------

```sh
opam install xxHash
```

Usage
-----

```ocaml
let input = "abcd"

let hash = XXH32.hash input in
Printf.printf "%nx\n" hash

let hash = XXH64.hash input in
Printf.printf "%Lx\n" hash
```

Documentation
-------------

[API reference](http://314eter.github.io/ocaml-xxhash)

License
-------

[MIT](LICENSE)

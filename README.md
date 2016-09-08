OCaml xxHash bindings
=====================

OCaml bindings for [xxHash], an extremely fast hash algorithm.

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

[API reference]

License
-------

[MIT](LICENSE)

[xxHash]: http://www.xxhash.com/
[API reference]: http://314eter.github.io/ocaml-xxhash

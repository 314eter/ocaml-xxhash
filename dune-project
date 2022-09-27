(lang dune 3.0)
(using ctypes 0.1)
(name xxhash)

(generate_opam_files true)

(source (github 314eter/ocaml-xxhash))
(authors "Pieter Goetschalckx <3.14.e.ter@gmail.com>")
(maintainers "Pieter Goetschalckx <3.14.e.ter@gmail.com>")
(license "MIT")

(package
 (name xxhash)
 (depends
  (ctypes (>= "0.6.0"))
   conf-xxhash
  (ppx_expect :with-test)
  (odoc :with-doc))
 (synopsis "Pieter Goetschalckx <3.14.e.ter@gmail.com>")
)

(* OASIS_START *)
(* OASIS_STOP *)

let dispatch = function
  | After_rules ->
    rule "%_stubgen.native -> %_generated.ml, %_stubs.c"
      ~prods:["lib/%_generated.ml"; "lib/%_stubs.c"]
      ~dep:"stubs/%_stubgen.native"
      (fun env _ -> Cmd (P (env "stubs/%_stubgen.native")));
    copy_rule "stubs/%_bindings.ml -> lib/%_bindings.ml"
      "stubs/%_bindings.ml" "lib/%_bindings.ml";
    flag ["c"; "compile"; "pkg_ctypes.stubs"] & S [A "-package"; A "ctypes.stubs"]
  | hook -> ()

let () = Ocamlbuild_plugin.dispatch @@ fun hook ->
  dispatch hook;
  dispatch_default hook

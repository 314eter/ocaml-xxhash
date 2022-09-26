let prefix = "xxhash"

let prologue = "#include <xxhash.h>"

let () =
  let generate_ml, generate_c = (ref false, ref false) in
  let () =
    Arg.(
      parse
        [
          ("-ml", Set generate_ml, "Generate ML");
          ("-c", Set generate_c, "Generate C");
        ])
      (fun _ -> failwith "unexpected anonymous argument")
      "stubgen [-ml|-c]"
  in
  match (!generate_ml, !generate_c) with
  | false, false | true, true ->
      failwith "Exactly one of -ml and -c must be specified"
  | true, false ->
      Cstubs.write_ml Format.std_formatter ~prefix (module Xxhash_bindings.C)
  | false, true ->
      print_endline prologue;
      Cstubs.write_c Format.std_formatter ~prefix (module Xxhash_bindings.C)

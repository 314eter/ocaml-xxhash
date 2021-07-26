open XXHash

let%expect_test _ =
  let hash = XXH3_64.hash "abcd" in
  print_endline (XXH3_64.to_hex hash);
  [%expect{|
    6497a96f53a89890
  |}]
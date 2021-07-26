open XXHash

let%expect_test _ =
  let hash = XXH32.hash "abcd" in
  print_endline (XXH32.to_hex hash);
  [%expect{|
    a3643705
  |}]
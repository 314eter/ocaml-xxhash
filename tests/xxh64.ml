open XXHash

let%expect_test _ =
  let hash = XXH64.hash "abcd" in
  print_endline (XXH64.to_hex hash);
  [%expect{|
    de0327b0d25d92cc
  |}]
open XXHash

let%expect_test _ =
  let hash = XXH64.hash "abcd" in
  Printf.printf "%Lx\n" hash;
  [%expect{|
    de0327b0d25d92cc
  |}]
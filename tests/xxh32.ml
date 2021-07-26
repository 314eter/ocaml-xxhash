open XXHash

let%expect_test _ =
  let hash = XXH32.hash "abcd" in
  Printf.printf "%nx\n" hash;
  [%expect{|
    a3643705
  |}]
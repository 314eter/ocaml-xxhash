open XXHash

let%expect_test _ =
  let hash = XXH3_64.hash "abcd" in
  Printf.printf "%Lx\n" hash;
  [%expect{|
    6497a96f53a89890
  |}]
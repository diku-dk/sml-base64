
fun test t s =
    let val () = print ("Test " ^ t ^ ": ")
        val res =
            let val e = Base64.encode s
            in if CharVector.all (fn c =>
                                     c = #"="
                                     orelse (c >= #"a" andalso c <= #"z")
                                     orelse (c >= #"A" andalso c <= #"Z")
                                     orelse (c >= #"0" andalso c <= #"9")) e
               then if Base64.decode e = SOME s then "OK"
                    else "ERR.2"
               else "ERR.1"
            end
            handle X => "EXN"
    in print res
     ; print "\n"
    end

val () = test "empty" ""
val () = test "one" "X"
val () = test "two" "aX"
val () = test "big" "Hi there, this is a big test"
val () = test "bigger" "Hi there, this is a bigger test, \nnow with newlines and some odd characters such as &%#?+\"()/\\!"

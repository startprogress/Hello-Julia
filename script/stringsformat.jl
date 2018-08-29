st_fl = "3.14"
fl = parse(Float32, st_fl)
println(5fl)

st_in = "15"
in = parse(Int, st_in)
println(3in)

# c style printf, sprintf is deprecated
using Printf
@printf "fl = %0.2f\n" fl

@printf "a character: %c\n" 'α'

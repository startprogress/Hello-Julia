A=[1, 2, 3]
S = Set([1, 2])
D = Dict("a"=>1, "b"=>2, "c"=>3);

# pop!
println(pop!(A))
println(A)

println(pop!(S))
println(S)

println(pop!(D))
println(D)

# popfirst!
println(popfirst!(A))

# pushfirst!
println(pushfirst!([1, 2, 3, 4], 5, 6))

# insert!(a::Vector, index::Integer, item)
println(insert!([6, 5, 2, 1], 3, 3))

# deleteat!(a::Vector, i::Integer)
println(deleteat!([6, 5, 4, 3, 2, 1], 2))

# splice!
# Remove the item at the given index, and return the removed item.
println(splice!([6, 5, 4, 3, 2, 1], 5))

# resize!
println(resize!([6, 5, 4, 3, 2, 1], 3))

# append!
println(append!([1, 2], [5, 6]))

# preappend!
println(prepend!([3],[1,2]))

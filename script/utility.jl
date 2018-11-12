# pair
# Construct a Pair object with type Pair{typeof(x), typeof(y)}. The elements are stored in the fields first and second. They can also be accessed via iteration.
p = Pair("A", 1)
println(p)
println(typeof(p))

println(p.first)
println(p.second)

for x in p
    println(x)
end

# pairs
Ps = Pair(["A", "B", "C"], [1, 2, 3])
println(Ps)

for x in Ps
    println(x)
end

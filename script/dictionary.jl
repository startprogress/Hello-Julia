# the same with: Dict("A"=>1, "B"=>2)
D = Dict([("A", 1), ("B", 2)])

# has key
println(haskey(D, "A"))

# get(dict, key, default)
println(get(D, "A", 3))

# get!(dict, key, default)
# Return the value stored for the given key, or if no mapping for the key is present, store key => default, and return default.
println(get!(D, "C", 3))
println(get(D, "C", 5))

# delete!(dict, key)
# Delete the mapping for the given key in a collection, and return the collection.

# keys & values
println(keys(D))

# merge
D1 = Dict([("A", 1), ("B", 2)])
D2 = Dict([("C", 2), ("B", 3)])
println(merge(D1, D2))

# WeakKeyDict is a hash table implementation where the keys are weak references to objects, and thus may be garbage collected even when referenced in a hash table. Like Dict it uses hash for hashing and isequal for equality, unlike Dict it does not convert keys on insertion.

# ImmutableDict is a Dictionary implemented as an immutable linked list, which is optimal for small dictionaries that are constructed over many individual insertions Note that it is not possible to remove a value, although it can be partially overridden and hidden by inserting a new value with the same key

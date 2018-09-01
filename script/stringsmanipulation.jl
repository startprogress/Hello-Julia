s = "Hello Julia! Let's start to leanr Julia"

# first 'l'
i = findfirst(isequal('l'), s)
println(i)

# start search at a given offset
r = findnext(isequal('l'), s, 5)
println(r)

# check if a substring is found within a string
println(occursin("Julia", s))

# the number of characters in str
println(length(s))

# regex: Perl-compatible regular expressions
println(match(r"^\s*(?:#|$)", "# a comment"))

# replace
println(replace("a", r"." => s"\g<0>1"))

#substring
substr = SubString(s, 1, 4)
println(substr)

# strip
s = strip("hello ")
println(s)

# split 
s = split("hello, there,bob", ", ")
println(s)

# join
j = join(collect(1:10), ", ")
println(j)

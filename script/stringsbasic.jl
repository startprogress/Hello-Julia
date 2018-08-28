using Print

# strings are defined with double quotes, can contain unicode
s1 = "Greek letter α,β,γ"
println(s1)

# chars are defined with single quotes
c1 = 'a'
println(c1)

# ascii value
println("Int('α') == ", Int('α'))

# upper case or lower case:
s1_caps = uppercase(s1)
s1_lower = lowercase(s1)

# substring
println(s1[1:8])
#> Greek le

# interpolation
a = "Have a"
b = "day"
println("$a nice $b")

# extend
println("1 * 2 = $(1 * 2)")

# concatenated with "*" and string()
println("Hello " * "World!")
println(string("Hello ", "World!"))

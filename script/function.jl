# regular definition
function f(x,y)
  x + y
end

# easier definition
f(x,y) = x + y

g = f

println(g(2, 3))

# convert return type
function l(x, y)::Int8
  return x * y
end;

println(typeof(l(2,3)))

# multiple Return Values
function h(x,y)
  return x+y, x*y
end

println(h(2, 3))

# operators functions
k = +;
println(k(1,2,3,4,5))

# anonymous functions
println(map(x -> x^2 + 2x - 1, [1,3,-1]))

# optional arguments
function m(x, y = 1, z = 3)
  return x + y + z
end
println(m(1))
println(m(1, 3, 5))

# keyword arguments can make these complex interfaces easier to use and extend by 
# allowing arguments to be identified by name instead of only by position
# keyword arguments are defined using a semicolon in the signature
function plot(x, y; style="solid", width=1, color="black")
  return x + y + 1, style * color
end
println(plot(1, 2, style = "soft"))
println(plot(2, 3, color = "blue", style = "soft"))

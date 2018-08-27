# regular definition
function f(x,y)
  x + y
end

# easier definition
f(x,y) = x + y

g = f

println(g(2, 3))

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

# hello world
using Main.mymodule
mymodule.helloworld()

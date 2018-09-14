# Compound Expressions
z = begin
  x = 1
  y = 2
  x + y
end
println("z is ", z)

# Conditional Evaluation
# it is an error if the value of a conditional expression is anything but true or false, just like Java
if x < y
    println("x is less than y")
elseif x > y
    println("x is greater than y")
else
    println("x is equal to y")
end

# ternary operator
# To facilitate chaining, the operator associates from right to left
test(x, y) = println(x < y ? "x is less than y" : x > y ? "x is greater than y" : "x is equal to y")
test(1, 2)

# Short-Circuit Evaluation
# if <cond> <statement> = <cond> && <statement>
# if ! <cond> <statement> = <cond> || <statement>
t = true
f = false
println(t && f)
println(t || f)
function fact(n::Int)
  n >= 0 || error("n must be non-negative")
  n == 0 && return 1
  n * fact(n-1)
end
fact(5)
fact(0)
# fact(-1) ERROR: n must be non-negative

# Repeated Evaluation: Loops
# while loop
i = 1
while i <= 5
  println(i)
  global i += 1
end
# for loop
# key word "in" and "∈", for i in [1,4,0], for s ∈ ["foo","bar","baz"]
for i = 1:5
  println(i)
end
# multiple nested for loop
for i = 1:2, j = 3:4
  println((i, j))
  i = 0 # assignments to i will not be visible to subsequent iterations
end

# try/catch statement
g(x) = try
  sqrt(x)
catch
  sqrt(complex(x, 0))
end
println(g(-1))


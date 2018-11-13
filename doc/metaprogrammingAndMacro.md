## Metaprogramming

Metaprogramming is the strongest legacy of Lisp inJulia. Like Lisp, Julia represents its own code as a data structure of the language itself. Since code is represented by objects that can be created and manipulated from within the language, it is possible for a program to transform and generate its own code. This allows sophisticated code generation without extra build steps, and also allows true Lisp-style macros operating at the level of [abstract syntax trees](https://en.wikipedia.org/wiki/Abstract_syntax_tree). In contrast, preprocessor "macro" systems, like that of C and C++, perform textual manipulation and substitution before any actual parsing or interpretation occurs. Because all data types and code in Julia are represented by Julia data structures, powerful reflection capabilities are available to explore the internals of a program and its types just like any other data.

Every Julia program starts life as a string:

```
julia> prog = "a + b"
"a + b"
```

The next step is to parse each string into an object called an expression, represented by the Julia type ``Expr``:

```
julia> ex = Meta.parse(prog)
:(a + b)

julia> typeof(ex)
Expr
```
Given an expression object, one can cause Julia to evaluate (execute) it at global scope using ``eval``:

```
julia> a = 1; b = 2;

julia> eval(ex)
3
```

## Macros
Macros provide a method to include generated code in the final body of a program. A macro maps a tuple of arguments to a returned expression, and the resulting expression is compiled directly rather than requiring a runtime ``eval`` call. Macro arguments may include expressions, literal values, and symbols.

A basic macro with one argument ``name``:
   
```
julia> macro sayhello(name)
           return :( println("Hello, ", $name) )
       end
```

Here is how it works:

```
julia> @sayhello("human")

Hello, human
```

## Reference
https://docs.julialang.org/en/v1/manual/metaprogramming/




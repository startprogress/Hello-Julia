### Basic Unit Test
The ``Test`` module provides simple unit testing functionality:

```
using Test
```

Examples with basic unit test:

```
julia> @test true
Test Passed
```

Check our new function foo(x) works as expected:

```
julia> foo(x) = length(x)^2

julia> @test foo("bar") == 9
Test Passed
```
### Working with Test Sets
Typically a large number of tests are used to make sure functions work correctly over a range of inputs. 
The ``@testset`` macro can be used to group tests into sets. All the tests in a test set will be run, and at the end of the test set a summary will be printed. If any of the tests failed, or could not be evaluated due to an error, the test set will then throw a ``TestSetException``.

### Other Test Macros
#### Test.@inferred
Tests that the call expression f(x) returns a value of the same type inferred by the compiler. It is useful to check for type stability.

### Broken Tests
If a test fails consistently it can be changed to use the @test_broken macro. This will denote the test as Broken if the test continues to fail and alerts the user via an Error if the test succeeds.    
**Broken Result**:

```
julia> @test_broken 1 == 2
Test Broken
  Expression: 1 == 2
```
**Error Result**:

```  
julia> @test_broken 1.2 == 1.2
Error During Test at REPL[5]:1
 Unexpected Pass
 Expression: 1.2 == 1.2
 Got correct result, please change to @test if no longer broken.

ERROR: There was an error during testing
```

### Reference
https://docs.julialang.org/en/v1/stdlib/Test/
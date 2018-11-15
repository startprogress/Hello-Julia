## Prerequisite
1. [Jupyter Notebook](https://jupyter.org/) installed.
2. Julia installed.

## How to Add Julia in Jupyter
Use Julia's REPL:

```
julia> import Pkg
julia> Pkg.add("IJulia")
julia> Pkg.build("IJulia")
```
## How to Use in Browser
Just like Python, you can directly create a ``.ipynb`` file. But with kernel_name julia-1.0 instead of python3file.

## Troubleshooting
### The kernel appears to have died. It will restart automatically
This is probably due to a bug in v1.0.0, already fixed in higher version. Need to upgrade the Julia version and then build IJulia again.    
Reference: [how-to-upgrade-julia-to-a-new-release](https://stackoverflow.com/questions/30555225/how-to-upgrade-julia-to-a-new-release)
Pkg is the standard package manager for Julia 1.0 or newer. Pkg is designed around “environments”: independent sets of packages that can be local to an individual project or shared and selected by name. The exact set of packages and versions in an environment is captured in a manifest file which can be checked into a project repository and tracked in version control, significantly improving reproducibility of projects.

The Pkg REPL-mode is entered from the Julia REPL using the key ``]``.

```
(v1.0) pkg>
```
The part inside the parenthesis of the prompt shows the name of the current project. Since we haven't created our own project yet, we are in the default project.    
### Add package
One can add package in several ways:    
1. Add registered package, for example: ``add Example``
2. Add unregistered package, for example: ``add https://github.com/**/**.jl``   
3. Add a local package with a local path

### Developing Package
By only using add your Manifest will always have a "reproducible state", in other words, as long as the repositories and registries used are still accessible it is possible to retrieve the exact state of all the dependencies in the project. This has the advantage that you can send your project (Project.toml and Manifest.toml) to someone else and they can "instantiate" that project in the same state as you had it locally. However, when you are developing a package, it is more convenient to load packages at their current state at some path. For this reason, the dev command exists.

```
(v1.0) pkg> dev Example
  Updating git-repo `https://github.com/JuliaLang/Example.jl.git`
 Resolving package versions...
  Updating `~/.julia/environments/v1.0/Project.toml`
  [7876af07] + Example v0.5.1+ [`~/.julia/dev/Example`]
  Updating `~/.julia/environments/v1.0/Manifest.toml`
  [7876af07] + Example v0.5.1+ [`~/.julia/dev/Example`]
```
The dev command fetches a full clone of the package to ~/.julia/dev/ (the path can be changed by setting the environment variable JULIA_PKG_DEVDIR). When importing Example julia will now import it from ~/.julia/dev/Example and whatever local changes have been made to the files in that path are consequently reflected in the code loaded. When we used add we said that we tracked the package repository, we here say that we track the path itself. Note that the package manager will never touch any of the files at a tracked path. It is therefore up to you to pull updates, change branches etc. If we try to dev a package at some branch that already exists at ~/.julia/dev/ the package manager we will simply use the existing path.

And we can also ``remove, update, pin, test and build`` a package.

So far we are working under the default project at ``v1.0``. But we can also easily create new project.
### Create new project
 In order to create a new project, create a directory for it and then activate that directory to make it the "active project" which package operations manipulate:
 
 ```
shell> mkdir MyProject

shell> cd MyProject
/Users/kristoffer/MyProject

(v1.0) pkg> activate .

(MyProject) pkg> st
    Status `Project.toml`
 ```
 Note that the REPL prompt changed when the new project is activated. Since this is a newly created project, the status command show it contains no packages, and in fact, it has no project or manifest file until we add a package to it.
 
 ### Create new package
 A package is a project with a name, uuid and version entry in the Project.toml file src/PackageName.jl file that defines the module PackageName. This file is executed when the package is loaded.
#### Grengerate files for a package
Use ``pkg> generate`` to generate files for a new package.
#### Add a build step to the package
The build step is executed the first time a package is installed or when explicitly invoked with build. A package is built by executing the file ``deps/build.jl``.
#### Adding tests to the package
When a package is tested the file ``test/runtests.jl`` is executed.

Now let's look back the above material, and retrospect some concepts:

1. **Environment**: the combination of the top-level name map provided by a project file combined with the dependency graph and map from packages to their entry points provided by a manifest file. For more detail see the manual section on code loading.
2. **Project**: a source tree with a standard layout, including a src directory for the main body of Julia code, a test directory for testing the project, docs for documentation files, and optionally a deps directory for a build script and its outputs. A project will typically also have a project file and may optionally have a manifest file
3. **Package**: a project which provides reusable functionality that can be used by other Julia projects via import X or using X. A package should have a project file with a uuid entry giving its package UUID. This UUID is used to identify the package in projects that depend on it.
4. **Application**: a project which provides standalone functionality not intended to be reused by other Julia projects. For example a web application or a command-line utility, or simulation/analytics code accompanying a scientific paper. An application may have a UUID but does not need one. An application may also provide global configuration options for packages it depends on. Packages, on the other hand, may not provide global configuration since that could conflict with the configuration of the main application.

### Reference
https://docs.julialang.org/en/v1/stdlib/Pkg


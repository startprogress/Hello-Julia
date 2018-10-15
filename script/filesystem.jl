println(pwd())

println(readdir("../doc"))

for (root, dirs, files) in walkdir(".")
    println("Directories in $root")
    for dir in dirs
        println(joinpath(root, dir)) # path to directories
    end
    println("Files in $root")
    for file in files
        println(joinpath(root, file)) # path to files
    end
end

# mkpath("../mkpath")

# mkdir("testingdir")

write("hello.txt", "world")

mv("hello.txt", "goodbye.txt")

readline("goodbye.txt")

rm("goodbye.txt")

println(isdir("../"))
println(isfile("../"))
# Global variable referring to the standard out stream.
stdout

# Global variable referring to the standard error stream.
stderr

# Global variable referring to the standard input stream.
stdin

# open(filename::AbstractString, [mode::AbstractString]) -> IOStream
io = open("myfile.txt", "w");
write(io, "Hello world!");
close(io);

io = open("myfile.txt", "r");
println(read(io, String))

# IOBuffer
# Create an in-memory I/O stream, which may optionally operate on a pre-existing array.

# flush
# Commit all currently buffered writes to the given stream.

# seek
# Seek a stream to the given position.
io = IOBuffer("JuliaLang is a GitHub organization.");
seek(io, 5);
println(read(io, Char))

# truncate
# Resize the file or buffer given by the first argument to exactly n bytes, filling previously unallocated space with '\0' if the file or buffer is grown.
io = IOBuffer();
write(io, "JuliaLang is a GitHub organization.")
truncate(io, 15);
println(String(take!(io)))


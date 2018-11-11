println(sort([2,3,1]))
println(sort([2,3,1], rev=true))

# To sort an array in-place, use the "bang" version of the sort function
a = [4,6,5];
println(sort!(a))

# order 
println(issorted([1, 2, 3]))

# There are currently four sorting algorithms available in base Julia:
# InsertionSort
# QuickSort
# PartialQuickSort(k)
# MergeSort


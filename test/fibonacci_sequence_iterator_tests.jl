using IterationsLibrary
using Test

@testset "FibonacciSequenceIterator" begin
    iter = IterationsLibrary.FibonacciSequenceIterator()
    arr1 = iterate(iter)
    @test arr1 == [1, 1, 2]
    arr2 = iterate(iter)
    println(arr2)
    @test arr2 == [3, 5, 8]

    iter2 = IterationsLibrary.FibonacciSequenceIterator(4)
    arr3 = iterate(iter2)
    @test arr3 == [1, 1, 2, 3]
end
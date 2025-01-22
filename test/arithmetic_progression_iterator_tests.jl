using IterationsLibrary
using Test

@testset "ArithmeticProgressionIterator" begin
    iter = IterationsLibrary.ArithmeticProgressionIterator(1, 1)
    arr1 = iterate(iter)
    @test arr1 == [1, 2, 3, 4]
    arr2 = iterate(iter)
    @test arr2 == [5, 6, 7, 8]

    iter2 = IterationsLibrary.ArithmeticProgressionIterator(1, 1, 5)
    arr3 = iterate(iter2)
    @test arr3 == [1, 2, 3, 4, 5]
end
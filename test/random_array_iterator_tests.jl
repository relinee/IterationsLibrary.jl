using IterationsLibrary
using Test

@testset "RandomArrayIterator" begin
    iter = IterationsLibrary.RandomArrayIterator(1, 10)
    arr1 = iterate(iter)
    @test length(arr1) == 2
    @test all(x -> 1 <= x <= 10, arr1)

    iter2 = IterationsLibrary.RandomArrayIterator(10.1, 20.0, 5)
    arr2 = iterate(iter2)
    @test length(arr2) == 5
    @test all(x -> 10.1 <= x <= 20.0, arr2)
end
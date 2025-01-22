"""
    Генератор массивов из n случайных целых чисел из заданного интервала

    left:   левая граница
    right:  правая граница
    size:   количество чисел в массиве
"""
struct RandomArrayIterator{T}
    left  ::T
    right ::T
    size  ::Int

    function RandomArrayIterator(left::T, right::T, size::Int=2) where T<:Union{Int, Float64}
        if size < 1
            error("size less than 1")
        end
        new{T}(left, right , size)
    end
end

Base.iterate(iter::RandomArrayIterator) = begin    
    return rand(iter.left:iter.right, iter.size)
end
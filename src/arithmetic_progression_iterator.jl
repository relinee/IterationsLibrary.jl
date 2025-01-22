"""
    Генерация массивов из n случайных целых чисел из заданного интервала
    
    start:  начальное значение
    step:   шаг арифметической прогрессии
    size:   количество чисел в массиве
"""
mutable struct ArithmeticProgressionIterator{T}
    start   ::T
    step    ::T
    size    ::Int

    function ArithmeticProgressionIterator(start::T, step::T, size::Int=4) where T<:Union{Int, Float64}
        if size < 1
            error("size less than 1")
        end
        new{T}(start, step, size)
    end
end


Base.iterate(iter::ArithmeticProgressionIterator) = begin
    res = [iter.start + (i-1)*iter.step for i in 1:iter.size]
    iter.start = last(res) + iter.step
    return res
end
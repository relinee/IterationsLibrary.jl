"""
    Генератор массивов из n очередных чисел из последовательности Фибоначчи
    
    a:      первое число Фибоначчи
    b:      второе число Фибоначии
    size:   количество чисел в массиве
"""
mutable struct FibonacciSequenceIterator
    a       ::Int
    b       ::Int
    size    ::Int

    function FibonacciSequenceIterator(size::Int=3)
        if size < 2
            error("size less than 2")
        end
        new(1, 1, size)
    end
end

Base.iterate(iter::FibonacciSequenceIterator) = begin
    a, b = iter.a, iter.b
    res = Array{Int, 1}(undef, iter.size)
    res[1], res[2] = a, b
    for i in 3:iter.size
        next = a+b
        a, b = b, next
        res[i] = next
    end

    iter.a, iter.b  = a + b, a + 2*b
    return res
end
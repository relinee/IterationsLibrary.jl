using IterationsLibrary
using Test

tests = [
    "random_array_iterator_tests",
    "fibonacci_sequence_iterator_tests",
    "arithmetic_progression_iterator_tests"
]

for t in tests
  include("$(t).jl")
end

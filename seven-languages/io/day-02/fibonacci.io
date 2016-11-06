# A Fibonacci sequence starts with two 1s. Each subsequent num- ber is the sum of the two numbers that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3.
# As a bonus, solve the problem with recursion and with loops.

fibLoop := method(index,
    fibonacci := list(1, 1)
    for(i, 0, index - fibonacci size, 
        fibonacci append(fibonacci at(i) + fibonacci at(i+1))
    )
    return fibonacci at(index-1)
)
fibLoop(0) println
fibLoop(4) println

fibRecursive := method(index, fibonacci,
    if (fibonacci == nil, fibonacci = list(1, 1))
    if (fibonacci size >= index, return fibonacci at(index-1))
    lastItemIndex := fibonacci size - 1
    fibonacci append(fibonacci at(lastItemIndex-1) + fibonacci at(lastItemIndex))
    fibRecursive(index, fibonacci)
)

fibRecursive(1) println
fibRecursive(4) println
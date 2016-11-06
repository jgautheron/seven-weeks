# Write a program to add up all of the numbers in a two-dimensional array.

values := list(
    list(1, 2, 3),
    list(4, 5, 6),
    list(7, 8, 9)
)

List deepSum := method(
    sum := 0
    self foreach (i, v,
        if (v type != "List", Exception raise("this method only works on two-dimensional lists"))
        sum = sum + v sum
    )
    return sum
)

values deepSum println
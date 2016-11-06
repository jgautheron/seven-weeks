# Add a slot called myAverage to a list that computes the average of all the numbers in a list. What happens if there are no numbers in a list? (Bonus: Raise an Io exception if any item in the list is not a number.)

List containsOnlyDigits := method(
    self foreach (i, v,
        if (v type != "Number", return false)
    )
    return true
)

List myAverage := method(
    if (self size == 0, return 0)
    if (self containsOnlyDigits == false, Exception raise("the list does not contain only digits"))
    return self sum / self size
)

# What happens if there are no numbers in a list?
list() myAverage println

# Expected use
list(1, 2, 3) myAverage println

# Raise an Io exception if any item in the list is not a number.
list(1, 2, "foo") myAverage println
# Write a prototype for a two-dimensional list. The dim(x, y) method should allocate a list of y lists that are x elements long. set(x, y, value) should set a value, and get(x, y) should return that value.

TwoDimensionalList := List clone

TwoDimensionalList dim := method(x, y,
    self setSize(y)
    for (i, 0, y-1, 
        self atPut(i, list() setSize(x))
    )
    return self
)

TwoDimensionalList get := method(x, y,
    return self at(x) at(y)
)

TwoDimensionalList set := method(x, y, value,
    self at(x) atPut(y, value)
)

two := TwoDimensionalList dim(3, 5)
two println

two set(1, 1, 29)
two get(1, 1) println
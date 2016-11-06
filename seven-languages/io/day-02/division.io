# How would you change / to return 0 if the denominator is zero?

# Reference the original behavior in the Number prototype
Number setSlot("coreDivision", Number getSlot("/"));

# Override the division operator with our custom logic
Number setSlot("/",
    method(denominator,
        # Fallback to the original behavior if the denominator != 0
        return if (denominator == 0, 0, self coreDivision(denominator))
    )
);

# Equals now to "0" instead of "inf"
(9 / 0) println
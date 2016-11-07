# Create a list syntax that uses brackets.

# Inject our custom logic in the curlyBrackets method
curlyBrackets := method(
    return call message arguments map(item, self doMessage(item))
);

{"foo", "bar", "moo"} println
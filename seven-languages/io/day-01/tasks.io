# Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.
# > IO is strongly typed, the following raises an exception
1 + "one"

# Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.
# > The default types are clean, there's no such thing as a digit evaluating to true or false.
0 == true
0 == false
nil == true
nil == false

# How can you tell what slots a prototype supports?
Foo := Object clone
Foo slotNames

# What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
# ::= Creates slot, creates setter, assigns value
Foo sayHello ::= method("Hello" println)
Foo slotNames
# ==> list(type, sayHello, setSayHello)
Foo setSayHello(method("Hello!" println))
Foo sayHello

# := Creates slot, assigns value
Foo sayGoodBye := method("Bye" println)
Foo slotNames
# ==> list(type, sayHello, setSayHello, sayGoodBye)

# Assigns value to slot if it exists, otherwise raises exception
Foo sayGoodBye = method("Bye!" println)
Foo sayGoodBye

# Execute the code in a slot given its name.
callTypeSlot := method(type, name, type getSlot(name) call)
callTypeSlot(Foo, "sayHello")

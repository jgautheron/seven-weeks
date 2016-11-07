# Enhance the XML program to handle attributes: if the first argu- ment is a map (use the curly brackets syntax), add attributes to the XML program.

OperatorTable addAssignOperator(":", "atPutNumber")
Map atPutNumber := method(
  self atPut(
    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
    call evalArgAt(1)
  )
)

# Inject our custom logic in the curlyBrackets method
curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage(arg)
    )
    r
)

Builder := Object clone
Builder writeAttr := method(attr, value,
    write(" ", attr, "=", "\"", value, "\"")
)
Builder forward := method(
    write("<", call message name)
    attrs := doMessage(call message arguments first)
    # If the first argument is a map, then we're dealing with attributes
    if (attrs isKindOf(Map), attrs foreach (attr, value, writeAttr(attr, value)))
    writeln(">")

    call message arguments foreach(arg,
        content := self doMessage(arg)
        if (content type == "Sequence", writeln(content))
    )
    writeln("</", call message name, ">")
)

s := "Builder ul({\"foo\":\"bar\"}, li(\"Io\"), li(\"Lua\"), li(\"Javascript\"))"
doString(s)
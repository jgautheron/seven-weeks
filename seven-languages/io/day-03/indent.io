# Enhance the XML program to add spaces to show the indentation structure.

Builder := Object clone

# Store the level in a static var
Builder nestingLevel := 0

Builder writeIndent := method(
    write("    " repeated(nestingLevel))
    call message arguments foreach(arg,
        write(doMessage(arg))
    )
    writeln("")
)

Builder forward := method(
    # Delay execution
    indentation := method("    " repeated(nestingLevel))

    # tagName := call message name
    # writeIndent("<", call message name, ">")

    writeln(indentation, "<", call message name, ">")
    nestingLevel = nestingLevel + 1
    call message arguments foreach(arg,
        content := self doMessage(arg)
        if (content type == "Sequence", writeln(indentation, content))
    )
    nestingLevel = nestingLevel - 1
    writeln(indentation, "</", call message name, ">")
)

Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript")
)
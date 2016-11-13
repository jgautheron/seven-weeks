val list = List("foo", "bar", "moo")
val totalSize = list.foldLeft(0)((size, value) => size + value.length())
println(totalSize)
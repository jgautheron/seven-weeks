abstract class StringProcessor

trait Censor {
    val Words = collection.mutable.Map[String, String]()

    // Load the censored words
    val source = "censor.dat"
    for (line <- io.Source.fromFile(source).getLines) {
        val tokens = line.split(":")
        Words += tokens(0).trim() -> tokens(1).trim()
    }

    def censor(s: String): String = {
        return s.split(" ").map(w => if (Words.contains(w.toLowerCase)) Words(w.toLowerCase) else w).mkString(" ")
    }
}

class CensorMan extends StringProcessor with Censor {
    def process(s: String): String = s
}

val text = "I darn wish I learned about Scala earlier, shoot"
val p = new CensorMan
println(p.censor(text))
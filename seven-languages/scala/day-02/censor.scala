abstract class StringProcessor

trait Censor {
    val Words = Map(
        "shoot" -> "pucky",
        "darn" -> "beans"
    )

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
class TicTacToe(val board: List[String]) {
    val RowLength = 3
    val ColumnLength = 3

    if (board.length != 9) {
        throw new IllegalArgumentException
    }

    checkColumnMatches()
    checkRowMatches()
    checkDiagonalMatches()
    
    def checkColumnMatches() {
        for (c <- 0 until RowLength) {
            var isMatch = true
            for (r <- c until board.length by RowLength) {
                if (board(r) != board(c)) {
                    isMatch = false
                }
            }
            if (isMatch) {
                TicTacToe.addMatch(board(c))
            }
        }
    }

    def checkRowMatches() {
        for (r <- 0 until board.length by RowLength) {
            var isMatch = true
            for (i <- 0 until RowLength) {
                if (board(r+i) != board(r)) {
                    isMatch = false
                }
            }
            if (isMatch) {
                TicTacToe.addMatch(board(r))
            }
        }
    }

    def checkDiagonalMatches() {
        val values = List[Int](0, RowLength-1)
        for (i <- values) {
            val startingPoint = i
            if (i == 0) {
                var isMatch = true
                for (d <- i until board.length by RowLength+1) {
                    if (board(d) != board(startingPoint)) {
                        isMatch = false
                    }
                }
                if (isMatch) {
                    TicTacToe.addMatch(board(startingPoint))
                }
            } else {
                var isMatch = true
                for (d <- i until board.length-i by RowLength-1) {
                    if (board(d) != board(startingPoint)) {
                        isMatch = false
                    }
                }
                if (isMatch) {
                    TicTacToe.addMatch(board(startingPoint))
                }
            }
        }
    }

    def winner(): String = {
        val matches = TicTacToe.getMatches()
        if (TicTacToe.noMatch()) {
            return "no winner"
        }
        if (matches.length > 1) {
            return "tie"
        }
        return matches(0)
    }
}

object TicTacToe {
    private var matches = Array[String]()
    def addMatch(m : String) = matches = matches :+ m
    def noMatch(): Boolean = matches.length == 0
    def getMatches(): Array[String] = matches
}

val game = new TicTacToe(List(
    "X", "", "",
    "O", "X", "O",
    "O", "O", "X"
))

println(game.winner())
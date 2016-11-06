# Write a program that gives you ten tries to guess a random number from 1–100. If you would like, give a hint of “hotter” or “colder” after the first guess.

number := Random value(100) floor
number println

guessed := false
stdin := File standardInput()
10 repeat(
    "What's your best guess for a number between 1 to 100?" println
    guess := stdin readLine asNumber
    if (guess == number, guessed = true; break, "That's not it, try again!" println)
    if (guess > number, "Try a lower number", "Try a higher number") println
)

if (guessed == true, "Congrats, you guessed it!", "Sorry... no more chances left :(") println
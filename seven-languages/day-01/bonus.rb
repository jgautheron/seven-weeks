# If you’re feeling the need for a little more, write a program that picks a random number. Let a player guess the number, telling the player whether the guess is too low or too high.
number = rand(10)+1

puts "Hi, so what's your best guess for a number between 1 to 10?"
while 1
    guess = gets.to_i
    case
    when guess == number
        puts "Congrats, you guessed it!"
        break
    when guess > number
        puts "Sorry, too high!"
    when guess < number
        puts "Sorry, too low!"
    end
end
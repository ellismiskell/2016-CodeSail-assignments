puts 'Hello! You have chosen to play Russian Roulette!
You are playing against a computer, using a gun with 6 barrels, only one of which contains a live bullet.
You get to go first, though! You can choose how many shots to take, or you can pass and let the computer choose.
Any shots not chosen by either of you will be taken by the other.
The barrel containing the live bullet will be chosen randomly.
Obviously, if you take a shot with the live bullet, you lose.
If you would like to choose how many shots to take, please push "c".
If you would like to pass, please push "p".
Good luck!'

user_input = gets.strip.chomp.downcase
live_bullet_barrel = rand(1..6)

if user_input == "c"
  puts "Now enter how many shots you would like to take."
  shots = gets.strip.chomp.to_i
    if shots >= live_bullet_barrel
      puts 'You die! You lose, your opponent won.'
    else
      puts "Congratulations! You lived, which means you won!"
    end
elsif user_input == "p"
  computer_input = rand(1..6)
    if computer_input >= live_bullet_barrel
      puts "Congratulations! Your opponent chose the barrel with the live bullet, which means you won!"
    else
      puts "Uh oh! Your opponent chose empty barrels, which means you are left with the bullet. You lose!"
    end
end

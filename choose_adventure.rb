def output_border
  puts "=" * 20
  puts " "
end

def hungry
  puts "You continue your walk. As you go, you hear your stomach rumble; all that exertion is making your hungry. As it just so happens, you see a bush up ahead covered in yummy-looking red berries. What do you choose to do?"
  puts "You eat the berries (e)
  You eat the picnic lunch you packed (p)"
  user_decision = gets.strip.chomp.downcase
        output_border
        if user_decision == 'p'
          puts "As you finish eating, you wonder whether you should continue your walk or head home. Do you:"
          puts "Go home (h)
          Keep walking (w)"
          user_decision = gets.strip.chomp.downcase
                output_border
                if user_decision == 'w'
                  puts "After you've been walking for about fifteen minutes, you come upon a grassy clearing. What do you want to do?"
                  puts "Take a nap in the sun (n)
                  Sit and listen to the birds, enjoying the nice weather (s)"
                  user_decision = gets.strip.chomp.downcase
                        output_border
                        if user_decision == 'n'
                          puts "After you wake up, you decide to head for home."
                          go_home
                        elsif user_decision == 's'
                          puts "After a nice rest, you decide to return home."
                          go_home
                        end
                elsif user_decision == 'h'
                  go_home
                end
        elsif user_decision == 'e'
          puts "Tsk, tsk, that wasn't very smart. Those berries were poisonous, and you die almost instantly."
        end
end

def peaceful
  puts "You're walking along the path, enjoying your walk, when you hear the sound of running water. As you come around the next turn, you see it: a river. The sun is starting to feel hot on the back of your neck; do you go swimming?"
  puts "Yes (y)
  No (n)"
  user_decision = gets.strip.chomp.downcase
        output_border
        if user_decision == 'y'
          puts "That wasn't such a good idea, the current is stronger than you thought and the cold water is making your muscles too weak to swim. You see the water pulling you toward a rock near the riverbank. Do you:"
          puts "Manage to grip the rock (g)
          Lose your hold because of your wet, slippery hands (l)"
          user_decision = gets.strip.chomp.downcase
                output_border
                if user_decision == 'g'
                  puts "You hang on long enough to regain some of your strength, and manage to swim to the nearby river bank and crawl onto land."
                  hungry
                elsif user_decision == 'l'
                  puts "You drown"
                end
        elsif user_decision == 'n'
          hungry
        end
end

def escape
  puts "Phew!! You made it to the path, and you're safe. What's your next course of action?"
  puts "Go home (h)
  Continue your walk; it is a beautiful day after all (w)"
  user_decision = gets.strip.chomp.downcase
        output_border
        if user_decision == 'w'
          peaceful
        elsif user_decision == 'h'
          go_home
        end
end

def dragon
  puts "As you catch your breath in the sunshine outside of the cave, you glance behind you at the cave mouth. You hear growling getting louder as the dragon moves toward you, and soon you can see smoke coming from its nostrils. You need to do something, fast! But what?"
  puts "Hide behind some of the rocks near the cave mouth (h)
  Pick up a branch lying nearby, and decide to fight the dragon (f)"
  user_decision = gets.strip.chomp.downcase
        output_border
        if user_decision == 'f'
          puts "As in any fight, you have a decision to make: offense or defense?"
          puts "Offense: You attack first (f)
          Defense: You wait, planning to counter the dragon's move (s)"
          user_decision = gets.strip.chomp.downcase
                output_border
                if user_decision == 'f'
                  puts "As soon as its head pokes out of the cave, you hit it on the snout, stunning it. While it is disoriented, you make your escape, running back toward the path."
                  escape
                elsif user_decision == 's'
                  puts "As soon as the dragon pokes its head out of the cave, it catches sight of you. It opens its mouth, breathing a large stream of fire at you. You can't move in time, and are burned to a crisp. You die."
                end
        elsif user_decision == 'h'
          puts "You can't see much from your hiding place, but you can hear the dragon as it stomps around on the path looking for you, breaking branches beneath its claws. What happens next?"
          puts "You stay hidden until all is quiet, then assuming that the dragon has given up you make a run for the path (r)
          While hiding you feel a sneeze coming. You do your best, but unfortunately you can't stop it (s)"
          user_decision = gets.strip.chomp.downcase
                output_border
                if user_decision == 'r'
                  escape
                elsif user_decision == 's'
                  puts "Well, that sneeze cost you dearly. The dragon hears you, comes over, and eats you."
                end
        end
end

def cave
  puts "You enter the cave. It's dark, and you can't see very well. Did you:"
  puts "Bring a flashlight? (f)
  Forget it at home? (h)"
  user_decision = gets.strip.chomp.downcase
  output_border
  if user_decision == 'f'
    puts "You turn it on and keep walking. As you explore, you notice that the back of the cave turns into a dark tunnel. What do you do?"
    puts "You walk into the tunnel (t)
    You stay out of the tunnel (s)"
    user_decision = gets.strip.chomp.downcase
          output_border
          if user_decision == 't'
            puts "Despite your flashlight, the tunnel is dark and it's hard to see. As you're walking along you trip over a rock you didn't see in your path. What happens?"
            puts "You fall, spraining your ankle (a)
            You trip, dropping your flashlight (d)"
            user_decision = gets.strip.chomp.downcase
                  output_border
                  if user_decision == 'a' || user_decision == 'd'
                    puts "As you're collecting yourself, you hear growling coming from the darkness farther along the tunnel. Uh oh! All that crashing awoke the dragon that lives deep in the cave, at the end of the tunnel. How do you react?"
                    puts "You turn and run (r)
                    You stop, frozen in shock (f)"
                    user_decision = gets.strip.chomp.downcase
                          output_border
                          if user_decision == 'r'
                            puts "Phew! You made it out of the cave in one piece."
                            dragon
                          elsif user_decision == 'f'
                            puts "The growling gets louder, and you see eyes coming at you from the depths of the tunnel. Unfortunately, that's one of the last things you see, since the dragon, angry at being woken up, eats you. You die."
                          end
                  end
          elsif user_decision == 's'
            puts "You hear a loud rumbling, like rocks grinding across each other. Do you:"
            puts "Stop, confused, trying to hear it better? (b)
                  Run out of the cave (o)"
              output_border
              if user_decision == 'o'
                puts "Good choice! The rumbling was part of the cave ceiling collapsing, but since you ran you just barely made it out alive! Unfortunately, all that noise woke the dragon that lives deep in the cave, at the end of the tunnel."
                dragon
              elsif user_decision == 'b'
                puts "Oh no! That rumbling was part of the cave ceiling collapsing; while you were standing there listening you got crushed! You're dead"
              end
          end
  elsif user_decision == 'h'
    puts "You exit the cave, and keep walking along the path."
    peaceful
  end
end

output_border
puts "Welcome to your new adventure, 'A Walk in the Woods'"
output_border

puts "What would you like your character's name to be?"
user_name = gets.chomp.strip.capitalize

output_border
puts "Welcome, #{user_name}, let's begin!
  It's a nice warm, sunny day, and you decide to go for a walk in the woods near your house. You enter the woods, and set off along the path. Five minutes into your walk, you notice a rocky outcropping. As you get closer, you notice an entrance to a cave in the rocks.
  What do you do?"
puts "Enter the cave (c)
Keep walking (w)"
user_decision = gets.strip.chomp.downcase
output_border
if user_decision  == 'c'
  cave
elsif user_decision == 'w'
  peaceful
end

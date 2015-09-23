# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
def shakil_the_dog

  puts "Look it's Shakil the dog. What do you want to say to him?"
  user_says = gets.chomp

  if user_says == "woof"
    puts "WOOF WOOF WOOF"
  elsif user_says == ("shakil stop" || "Shakil STOP!")
    puts "*Silence*"
  elsif user_says == "meow"
    puts "woof woof woof woof woof"
  elsif user_says == "treat"
    puts "*Feed me"
  elsif user_says == "go away"
    puts "*Shakil leaves*"
  else
    puts "He doesn't know that command"
  end

end
 
# Run our method
puts shakil_the_dog
number = rand (100)
puts "I'm thinking of a number between 0 to 99. Can you guess it?"

guess = gets.to_i
attempts = 1

while guess != number do
  if number > guess
    puts "Too low"
  elsif number < guess
    puts "Too Big"
  end

  puts "Guess Again: "
  guess = gets.to_i
  attempts +=1
end

puts "Congrats you guessed my number in #{attempts} attempts, yes it's #{number}."
def count_letters(sentence)
  puts "counting letters"
  sentence.scan(/[\S]|[\s]/ ).inject(Hash.new(0)) do |h, c|
    h[c] += 1; h
  end
end

def indices(sentence)
  puts "checking indices"
  position = {}

  sentence.delete(" ").split("").each_with_index do |letter, index|
    position[index] = letter
  end
  position
end

puts count_letters("lighthouse in the house...")
puts indices("lighthouse in the house...")
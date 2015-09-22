def fizzbuzz
  starting_num = rand(1...100)
  ending_num = rand(starting_num...100)

  starting_num.upto(ending_num) do |num|
    if num % 5 == 0 && num % 3 == 0
      puts "FizzBuzz"
    elsif num % 5 == 0
      puts "Buzz"
    elsif num % 3 == 0
      puts "Fizz"
    else
      puts num
    end
  end
end

fizzbuzz

# 1.upto(100) do |i|
  # if i % 5 == 0 && i % 3 == 0
  #   puts "FizzBuzz"
  # elsif i % 5 == 0
  #   puts "Buzz"
  # elsif i % 3 == 0
  #   puts "Fizz"
  # else
  #   puts i
  # end
# end
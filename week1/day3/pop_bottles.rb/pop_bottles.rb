def total_bottles(money)
  @bottles                   = money.to_i / 2
  @empty_bottles_to_bottles  = @bottles / 2
  @caps_to_bottles           = (@empty_bottles_to_bottles / 4) + @bottles
  @empty_bottles_leftover    = @bottles % 2
  @caps_leftover             = @bottles % 4
  @total_bottles             = @empty_bottles_to_bottles + @caps_to_bottles + @bottles

  puts "You have a total of #{@total_bottles} bottles of pop. You have #{@empty_bottles_leftover} empty bottles\nand you have #{@caps_leftover} bottles caps left over."

end

total_bottles(20)
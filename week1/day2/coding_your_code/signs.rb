require "highline/import"

def total_price
  length      = ask("What's the length you wanted?").to_i
  width       = ask("What's the width you wanted?").to_i
  colours     = ask("How many colours would you like?").to_i

  square_foot = ((length * width) * 15.0)
  tax         = 0.15

  if colours <= 2
    colours * 10.0
  else
    colours * 15.0
  end

  total_price = ((square_foot + colours) * tax)
end

puts "$#{total_price}"
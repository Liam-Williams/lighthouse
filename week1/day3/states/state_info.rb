require "highline/import"

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states[:LA] = 'Louisiana'
@states[:KY] = 'Kentucky'

@cities = {
  OR: ['Salem', 'Portland'],
  FL: ['Tallahassee', 'Jacksonville'],
  CA: ['Sacramento', 'Los Angeles'],
  NY: ['New York', 'Albany'],
  MI: ['Detroit', 'Lansing']
}

@taxes = {
  OR: 0.13,
  FL: 0.20,
  CA: 0.12,
  NY: 0.25,
  MI: 0.10
}

state_input = ask("What is the state code you would like to search?").upcase

def describe_state(state_input)
  state_input = state_input.to_sym
  full_state_name = @states[state_input]
  number_of_cities = @cities[state_input].count
  cities = @cities[state_input].join(", ")

  puts "#{state_input} is for #{full_state_name}. It has #{number_of_cities} major cities: #{cities}."
end

describe_state(state_input)

@spending = ask("How much did you spend there?").to_i

def calculate_tax(state_input)
  state_input = state_input.to_sym
  tax = @taxes[state_input]
  total_amount = ((@spending * tax) + @spending)

  puts "$#{total_amount.to_f.round(3)}"
end

calculate_tax(state_input)

city_state = ask("Look for a State with a City")

def find_state_for_city(city_state)
  found_state = @states.key(city_state)

  puts "#{city_state} is part of #{found_state}."
end

find_state_for_city(city_state)
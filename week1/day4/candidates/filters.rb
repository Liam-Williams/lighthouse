# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require "highline/import"

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      puts candidate
    end
  end
  return "nil"
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def github_points(candidate)
  candidate[:github_points] >= 100
end

def language(candidate)
  candidate[:languages].include?("Ruby" || "Python")
end

def recent(candidate)
  candidate[:date_applied] >= 15.day.ago.to_date
end

def of_age(candidate)
  candidate[:age] >= 18
end

def qualified_candidates
  @candidates.each do |qualified|
    if (experienced?(qualified) && github_points(qualified) && language(qualified) && recent(qualified) && of_age(qualified))
      puts qualified
    end
  end
end

def ordered_by_qualifications
  puts @candidates.sort_by {|k| [k[:years_of_experience], k[:github_points]]}.reverse
end

def menu
  user_input = ask("Please input one of the following:\nfind 'user id goes here'\nall\nqualified\nquit")

  if user_input == "all"
    puts @candidates
    menu
  elsif user_input == "qualified"
    qualified_candidates
    menu
  elsif user_input == "quit"
    exit
  end
end

menu

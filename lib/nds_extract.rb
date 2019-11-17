require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  dir_index = 0 
  result = {}
  while dir_index < nds.length do 
    result[nds[dir_index][:name]] = gross_for_director(nds[dir_index])
    dir_index += 1 
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  moviegross = 0
  movie_index = 0
  while movie_index < director_data[:movies].length do
  moviegross = moviegross + director_data[:movies][movie_index][:worldwide_gross]
  movie_index += 1
  end
  return moviegross
end

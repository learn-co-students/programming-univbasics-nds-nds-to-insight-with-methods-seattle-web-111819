require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  # binding.pry
  director_index = 0
  totals = {}

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_index += 1
  end
totals
end


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  mov_index = 0
  gross_total = 0
  while mov_index < director_data[:movies].length do
    gross_total += director_data[:movies][mov_index][:worldwide_gross]
    mov_index += 1
  end
  gross_total
end

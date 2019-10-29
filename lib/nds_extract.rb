require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  dir_total = 0 
  movie_index = 0 
  dir_index = 0 
  while dir_index < nds.length do
    movie_index = 0 
    while movie_index < nds[dir_index][:movies].length do 
      dir_total += nds[dir_index][:movies][movie_index][:worldwide_gross]
      result[nds[dir_index][:name]] = dir_total
      movie_index += 1 
    end
  dir_index += 1 
  dir_total = 0 
  end 
  result 
end 

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
   total = 0 
   index = 0 
   while index < director_data[:movies].length do 
     total += director_data[:movies][index][:worldwide_gross]
     index += 1 
   end
   total 
end



require 'directors_database'
require "pp"

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

# nds and directors_database refer to the same nested DS

def directors_totals(nds)
  hash = {}
  nds.each do |name_movies|
    director_name = name_movies[:name]
    hash.store(director_name, gross_for_director(name_movies))
  end
  hash
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    gross = 0
    director_data[:movies].each do |movie|
      gross += movie[:worldwide_gross]
    end 
    gross 
end


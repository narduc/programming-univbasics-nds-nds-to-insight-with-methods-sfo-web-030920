$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  i = 0
  while i < director_data[:movies].length do
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return total
end
# binding.pry
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  # result = {}
  # nil
  hash = {}
  i = 0
  while i < nds.length do
    director = nds[i]
    hash[director[:name]] = gross_for_director(director)
    i += 1
  end
  return hash
end

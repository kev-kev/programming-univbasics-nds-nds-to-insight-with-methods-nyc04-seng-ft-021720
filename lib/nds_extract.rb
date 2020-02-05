$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  directors_database.each { |director|
    if director[:name] == director_data[:name]
      #if they match, we need to iterate over each of their movies and sum up the worldwide gross
      total = 0
      director_data[:movies].each { |movie|
        total += movie[:worldwide_gross]
      }
      return total
    end
    }
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    #take the name of the director as the key and the value of their films as the value and add to the results hash
    director_name = nds[director_index][:name]
    result[director_name] = gross_for_director(nds[director_index])
    director_index += 1
  end
  return result
end

# def directors_totals(nds)
#  result = {}
#  directors_database.each { |director|
#    director_name = [director][:name]
#    result[director_name] = gross_for_director(director)
#    }
#  return result
#end
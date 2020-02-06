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

  director_index = 0
  while director_index < directors_database.length do
    if directors_database[director_index][:name] == director_data
      director_info = directors_database[director_index]
    else
      director_index += 1
    end
  end
  return false if director_info.nil?
  movie_index = 0
  total = 0
  while movie_index < director_info[:movies].length do
    total += director_info[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  return total
>>>>>>> 38df41afe25cb341a75c38f886a5f49cf9b8446f
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
<<<<<<< HEAD
=======
# 
>>>>>>> 38df41afe25cb341a75c38f886a5f49cf9b8446f
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

<<<<<<< HEAD
# def directors_totals(nds)
#  result = {}
#  directors_database.each { |director|
#    director_name = [director][:name]
#    result[director_name] = gross_for_director(director)
#    }
#  return result
#end
=======
# Zero is director_index, need to iterate through the length of directors_index and see if the entry matches director_data
# pp directors_database[0][:name]
# pp directors_database[0][:movies][0][:worldwide_gross]

# does the name of the director_data match directors_database[director_index][:name]?
# If so, need to sum up their movies
# If not, ++

# pp directors_database[1][:movies][1][:worldwide_gross]
>>>>>>> 38df41afe25cb341a75c38f886a5f49cf9b8446f

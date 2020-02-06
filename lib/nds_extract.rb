$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

# In this lab, you're going to work through the directors database and create a
# `Hash` that records the director's name as a key, and the total grosses of all of their
# movies as the value. For example:

# ```ruby
# hash = {
#   "1st Director's Name"=>1234567890,
#   "2nd Director's Name"=>1234577890,
#   "3rd Director's Name"=>1234709136,
#   ...
# }

def directors_totals(nds)
  results = {}
  row_index = 0
  
  while row_index < nds.length do
    director_name = nds[row_index][:name]
    results[director_name] = 0
    movie_index = 0
      while movie_index < nds[row_index][:movies].length do 
        results[director_name] += nds[row_index][:movies][movie_index][:worldwide_gross]
        movie_index += 1
      end 
    row_index += 1
  end
  results
end
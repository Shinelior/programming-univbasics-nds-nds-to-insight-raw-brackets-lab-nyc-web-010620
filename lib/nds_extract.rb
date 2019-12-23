$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

require "pp"
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to # make sure
  # that you know what you're starting with!
  pp directors_database
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
 # result = {
#  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
 new_hash={}
   
  row_index=0 
  while  row_index<directors_database.length do
    total=0
    inner_index=0 
    while inner_index<directors_database[row_index][:movies].length do 
      total+=directors_database[row_index][:movies][inner_index][:worldwide_gross]  
      inner_index+=1  
    end 
    #puts "#{total}"
    director=directors_database[row_index][:name]
   # "director:total".to_hash
   # puts "#{director}"
    #new_director=[row_index+1]director 
   # new_hash[director.to_sym]=director
   #new_hash={director=>total}
    new_hash[director]=total
    #puts  new_hash
    row_index+=1
  end

  return new_hash
 
  
  
  
  # Be sure to return the result at the end!
  nil
end
directors_totals(directors_database)
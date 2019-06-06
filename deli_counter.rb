def line(deli)
    if deli.empty?                                        #.empty? method
      puts "The line is currently empty."
    else
      message = "The line is currently:"
      deli.each.with_index(1) { |name, int|       #enumerator (chained together) with_index iterates the given block. Starts @ (1). If no block, returns an enumerator.
        message << " #{int}. #{name}"                     #interpolating 'int' to number in line and 'name' to person
      }
      puts message
    end
end

def take_a_number(deli, name)
  deli << name                                                        #add name to array
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.first}."     #interpolating the current first element (name) in array to be called out
    deli.shift                                  #removes that element now that they have been served
  end
end

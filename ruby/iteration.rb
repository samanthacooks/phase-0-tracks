

actor_holly = [ "lee", "brad", "andy", "scarllet"]
actors = { "lee" => "cradle to the grave", "brad" => "mr. & mrs. smith", "andy" => "godfatherIII", "scarllett" => "x-men"}
    
#iterating array using .each
def inter_each(actor_holly)
  actor_holly.each { |x| puts "#{x} TEST"}
end
p inter_each(actor_holly)

#iterating  hash using .each
def inter_actors(actors)
  actors.each { |x| puts "#{x} TEST"}
end
p inter_actors(actors)

#iterating using .map!
def inter_bang(actor_holly)
    actor_holly.map! { |x| puts "#{x} film"}
end
p inter_bang(actor_holly)

#iterating a hash using map , as on Hashes we don't use map! 
def inter_nobang(actors)
    actors.map {|x| puts "#{x} film"}
end
p inter_nobang(actors)





#iterate array deleting any item that meets a certain condition
if actor_holly.delete_if { |x| x.length > 4 }
  p actor_holly
else
end



#iterate hash deleting any item that meets a certain condition
if actors.delete_if { |x, y| y.length > 15 }
  p actors
else
end


#iterate array filtering items that only meets a certain condition
if actor_holly.select! {|x| x =~ /["l"]/ } 
  p actor_holly
else
end


#iterate hash filtering items that only meets a certain condition
if actors.select! {|x, y| y =~ /["o"]/ }
  p actors
else
end


#iterate array with another method filtering items that only meets a certain condition
if actor_holly.keep_if {|x| x =~ /["d"]/ }
  p actor_holly
else
end


#iterate hash with another method filtering items that only meets a certain condition
if actors.keep_if {|x,y| y =~ /["e"]/ }
  p actors
else
end


#iterate array removing items from structure until condition is false
actor_holly.drop_while {|x| x == "lee"}
p actor_holly




#iterate hash removing items from structure until condition is false
actors.drop_while {|x,y| y == "mr. and mrs. smith"}
p actor_holly


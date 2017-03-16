

actor_holly = [ "lee", "brad", "andy", "scarllet"]
actors = { "lee" => "cradle to the grave", "brad" => "mr. & mrs. Smith", "andy" => "godfatherIII" }
    
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

#interating a hash using map , as on Hashes we don't use map! 
def inter_nobang(actors)
    actors.map {|x| puts "#{x} film"}
end
p inter_nobang(actors)

#actor_holly.delete_if { |x| x.length > 4 }
#p actor_holly
#actors.delete_if { |x, y| y.length > 15 }
#p actors
#actor_holly.select! {|x| x =~ /["e"]/ } 
#actors.select! {|x, y| y =~ /["a"]/ }
#actor_holly.keep_if {|x| x =~ /["e"]/ }
#actors.keep_if {|x,y| y =~ /["a"]/ }
#actor_holly.index{|x| x == "lee"}
#actors.index{|x,y| y=="e"}
puts "hello fake"
 actor_holly = [ "lee", "brad", "andy", "scarllet"]
 actors = { "lee" => "cradle to the grave", "brad" => "mr. & mrs. Smith", "andy" => "godfatherIII" }
  


#actor_holly.each { |x| puts "#{x} TEST"}
#actors.each { |x| puts "#{x} TEST"}

#actor_holly.map! { |x| puts "#{x} film"}
#actors.map {|x| puts "#{x} film"}

#actor_holly.delete_if { |x| x.length > 4 }
#p actor_holly
#actors.delete_if { |x, y| y.length > 15 }
#p actors
#actor_holly.select! {|x| x =~ /["e"]/ } 
#actors.select! {|x, y| y =~ /["a"]/ }
#actor_holly.keep_if {|x| x =~ /["e"]/ }
#actors.keep_if {|x,y| y =~ /["a"]/ }
actor_holly.take_while {|x| x.slice(2) }

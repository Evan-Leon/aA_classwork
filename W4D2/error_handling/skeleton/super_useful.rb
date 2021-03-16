# PHASE 2
def convert_to_int(str)
  str.to_i
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  begin 
    FRUITS.include?(maybe_fruit)
  
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  rescue StandardError => e
    puts "put a real fruit"
    
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin  
    maybe_fruit = gets.chomp
  
    reaction(maybe_fruit) 
  rescue
    retry 
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if name.empty? || fav_pastime.empty?
      raise "I Need more info... your name and favorite past time!"
    @name = name
    if yrs_known < 5 
      raise "Best friends have known each other AT LEAST 5 years"  
      @yrs_known = 6
    else  
      @yrs_known = yrs_known
    end
    @fav_pastime = fav_pastime


  end


  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end



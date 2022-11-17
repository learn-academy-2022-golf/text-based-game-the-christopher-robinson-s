def render_ascii_art
    File.readlines("spaceship.txt") do |line|
      puts line
    end
  end

puts render_ascii_art 
puts "\n" 
puts  "SPACE ADVENTURE TIME \n press Enter to continue" 
gets
puts  "\n" "\n" "\n"
puts "The earth has been destroyed.... You are the last hope for humanity. \nYou must find a new planet to allow humanity to survive. \nYou and your family Winnie, Piglet, Rabbit, Christopher, Owl, Tigger, and Eyeore must travel through the dangers of space. \nYou only have enough honey for five warp jumps. Beware the Humphalump pirates \n \n Press Enter to Continue \n" 
gets
puts "You have encountered your first planet, it is barren and rocky and you see no signs of life. \n Do you want to stop and explore for the chance to find more honey or do you continue your journey?"
honey = 5
characters = ["winnie", "piglet", "rabbit", "christopher", "owl", "tigger", "eyeore"]
first_response = gets.chomp.downcase
    if first_response.include? "explore"
        puts "you land on the planet and encounter a Cave, Enter or Leave the Planet \n \n"
        second_response = gets.chomp.downcase
        if second_response.include? "enter" || "explore"
            puts "choose a family member to enter the cave" "Choose among #{characters.join ", "} \n \n"
            third_response = gets.chomp.downcase
            if characters.include? third_response
                options = ["#{third_response} dies, and you are force to flee the planet \n \n", "#{third_response} finds two honey \n \n", "#{third_response} escapes from alien moles, you flee to the ship and leave the planet \n \n"]
                response = options.sample
                if response == options[0]
                    characters.delete third_response
                    honey -= 1
                end
                if response == options[1]
                    honey += 2
                end
                if response == options[2]
                    honey -= 1
                end
                puts response + "You have #{honey} Honey left \n"
            end
        end
    elsif first_response.include? "leave"
        honey -= 1
        puts "You continue on your journey you only have #{honey} honey left \n \n"
    else 
        puts "Please enter explore or leave"
    end 



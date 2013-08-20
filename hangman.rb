#!/usr/bin/env ruby
#word_bank=["rt4.","tree","   t","4444","     "]
word_bank = ["harry"]
# word_bank = ["adult","aircraft","airforce","airport","album","alphabet","apple","backpack","balloon",
# "banana","barbecue","bathroom","bathtub","bible","bottle","brain","bridge","butterfly","button",
# "cappuccino","carpet","carrot", "chair","chess","chief","child","chisel","chocolate","church",
# "circle","circus","clock","coffee","comet","compass","computer","crystal","cycle","diamond","dress",
# "drill","drink","earth","electricity","elephant","eraser","explosive","family","feather","festival",
# "finger","flower","freeway","fruit","fungus","garden","gemstone","gloves","grapes","guitar","hammer",
# "hieroglyph","highway","horoscope","horse","icecream","insect","kaleidoscope","kitchen","knife",
# "leather","library","liquid","magnet","meteor","microscope","milkshake","money","monster","mosquito",
# "mouth","necklace","needle","onion","paintbrush","pants","parachute","pebble","pendulum","pepper",
# "perfume","pillow","plane","planet","pocket","potato","printer","prison","pyramid","radar","rainbow",
# "record","restaurant","rifle","rocket","saddle","sandpaper","sandwich","satellite","school","shower",
# "shuttle","signature","skeleton","slave","snail","software","solid","space","spectrum","sphere","spice",
# "spiral","spoon","square","staircase","stomach","sunglasses","surveyor","swimming","sword","table",
# "tapestry","teeth","telescope","television","tennis","thermometer","tiger","toilet","tongue","torch",
# "torpedo","train","treadmill","triangle","tunnel","typewriter","umbrella","vacuum","vampire",
# "videotape","vulture","water","weapon","wheelchair","woman"]

hangman = word_bank.sample
hangman_letters = hangman.split(//)

blank = "_"*hangman.length
blank_array = blank.split(//)

# def ask_hangman question
#   puts question
#   return gets.chomp


# end
# ask_hangman "Guess a single letter (a-z) or the entire word: "
# while guess != @hangman

#   ask_hangman "Guess a single letter (a-z) or the entire word: "


#   if hangman_letters.include?(response)
#     slot = hangman_letters.each_index.select{|i| hangman_letters[i] == response}
#     slot.each {|space| blank_array.slice!(space)}
#     p blank_array
#     slot.each{|space| blank_array.insert(space, response)}
#     blank = blank_array.join
#     return blank
#   end
#   print blank.to_s if !hangman_letters.include?(response)

# puts



# print hangman
hangman = word_bank.sample
hangman_letters = hangman.split(//)

blank = "_"*hangman.length
blank_array = blank.split(//)

question_1 = "Guess a single letter (a-z) or the entire word: "

def ask_hangman question
  print question
end

letter_guesses = Array.new
chances = 8
ask_hangman question_1
response = gets.chomp
until chances == 0
  if response == hangman
    puts "Congratulations, you've guessed the word!"
    break
  elsif response.length.to_i > 1
    print "Sorry, the hidden word was"
    p hangman
    break
  elsif chances == 0
    puts "You're out of chances, better luck next time..."
  elsif
    letter_guesses.include?(response)
         puts " You already guessed that letter, try again"
         response = gets.chomp
  elsif response.length.to_i == 1
    if !hangman_letters.include?(response)
      chances -= 1
      print blank.to_s
      letter_guesses.push(response)
      response = gets.chomp
    elsif hangman_letters.include?(response)
      slot = hangman_letters.each_index.select{|i| hangman_letters[i] == response}
      slot.each {|space| blank_array.slice!(space)}
      slot.size = occurances
      slot.each{|space| blank_array.insert(space, response)}
      blank = blank_array.join
      puts blank
      puts "Found " + occurances.to_s + "of the character" + response
      if blank == hangman
        puts "Congratulations, you've guessed the word!"
      break
      end
      ask_hangman question_1
      response = gets.chomp
    end
  end
end







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

question_1 = "Guess a single letter (a-z) or the entire word: "
def ask_hangman question
  puts question
end

def used_guess chances, guess
  chances = 8
  guess.include?
    chances -= 1
  end

chances = 8
ask_hangman question_1
  response = gets.chomp
until response = hangman || chances = 0
  if response.length.to_i == 1
    print response
    if hangman_letters.include?(response)
      chances -= 1
      slot = hangman_letters.each_index.select{|i| hangman_letters[i] == response}
      slot.each {|space| blank_array.slice!(space)}
      print blank_array
      slot.each{|space| blank_array.insert(space, response)}
      blank = blank_array.join
      ask_hangman question_1
      print blank
break
    elsif !hangman_letters.include?(response)
      print blank.to_s
      break
    end
   if response.length.to_i > 1
      print response
      if response != hangman
        chances -= 1
  end



    print
end

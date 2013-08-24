#!/usr/bin/env ruby
require 'pry'

word_bank = ["adult","aircraft","airforce","airport","album","alphabet","apple","backpack","balloon",
"banana","barbecue","bathroom","bathtub","bible","bottle","brain","bridge","butterfly","button",
"cappuccino","carpet","carrot", "chair","chess","chief","child","chisel","chocolate","church",
"circle","circus","clock","coffee","comet","compass","computer","crystal","cycle","diamond","dress",
"drill","drink","earth","electricity","elephant","eraser","explosive","family","feather","festival",
"finger","flower","freeway","fruit","fungus","garden","gemstone","gloves","grapes","guitar","hammer",
"hieroglyph","highway","horoscope","horse","icecream","insect","kaleidoscope","kitchen","knife",
"leather","library","liquid","magnet","meteor","microscope","milkshake","money","monster","mosquito",
"mouth","necklace","needle","onion","paintbrush","pants","parachute","pebble","pendulum","pepper",
"perfume","pillow","plane","planet","pocket","potato","printer","prison","pyramid","radar","rainbow",
"record","restaurant","rifle","rocket","saddle","sandpaper","sandwich","satellite","school","shower",
"shuttle","signature","skeleton","slave","snail","software","solid","space","spectrum","sphere","spice",
"spiral","spoon","square","staircase","stomach","sunglasses","surveyor","swimming","sword","table",
"tapestry","teeth","telescope","television","tennis","thermometer","tiger","toilet","tongue","torch",
"torpedo","train","treadmill","triangle","tunnel","typewriter","umbrella","vacuum","vampire",
"videotape","vulture","water","weapon","wheelchair","woman"]

hangman = word_bank.sample

if /[\W\s\d]/.match(hangman)
  hangman = word_bank.sample
end
hangman_letters = hangman.split(//)
blank = "_"*hangman.length
blank_array = blank.split(//)
question_1 = "Guess a single letter (a-z) or the entire word: "

def ask_hangman question
  print question
end

letter_guesses = Array.new
chances = 8

puts "Welcome to Hangman!"
puts "You have eight chances to guess the letters of the mystery word"
puts "if you attempt to guess the word and you fail: YOU LOSE.  HAHAHA"
puts "if you guess a letter more than once you do not lose a guess."
puts "if you guess the word correctly without cheating..."
puts "I am watching you..."
puts "then you will be the winner..."
puts
puts "Word: #{blank}"
puts
puts "Chances remaining: #{chances}"
puts
ask_hangman question_1
response = gets.chomp
until chances == 0
  if response.empty?
    chances -= 1
    puts "You hit return - stop stalling"
    puts "Word: #{blank}"
    puts
    puts "Chances remaining: #{chances}"
    ask_hangman question_1
    response = gets.chomp
  elsif response == hangman
    puts "Congratulations, you've guessed the word!"
    break
  elsif response.length.to_i > 1
    puts "the word you guessed: '"+ response +"' was incorrect"
    print "Sorry, the hidden word was "
    p hangman
    break
  elsif
    letter_guesses.include?(response)
    puts " You already guessed that letter, try again"
    puts
    puts "Word: #{blank}"
    puts
    puts "Chances remaining: #{chances}"
    ask_hangman question_1
    response = gets.chomp
  elsif response.length.to_i == 1
    if /[\W\s\d]/.match(response)
      puts "no stalling, you must guess a letter or word."
      ask_hangman question_1
      response = gets.chomp
    elsif !hangman_letters.include?(response)
      chances -= 1
      letter_guesses.push(response)
      puts "Sorry, no " + response + "'s found. try again."
      puts
      if chances == 1
        puts "this is your final chance.  Guess wisely."
        puts "Word: #{blank}"
        puts "Chances remaining: #{chances}"
      elsif chances == 0
        puts "You're out of chances, better luck next time..."
        puts "The hidden word was " + hangman
      else
        puts "Word: #{blank}"
        puts
        puts "Chances remaining: #{chances}"
        ask_hangman question_1
        response = gets.chomp
      end
    elsif hangman_letters.include?(response)
      letter_guesses.push(response)
      slot = hangman_letters.each_index.select{|i| hangman_letters[i] == response}
      slot.each{|space| blank_array[space] = response}
      blank = blank_array.join
      occurances = blank_array.select {|i| i == response}
      puts "Found " + occurances.size.to_s + " occurance(s) of the character " + response + "/n"
      if blank == hangman
        puts "Congratulations, you've guessed the word!"
        break
      end
      puts "Word: #{blank}"
      puts
      puts "Chances remaining: #{chances}"
      puts
      ask_hangman question_1
      response = gets.chomp
    end
  end
end






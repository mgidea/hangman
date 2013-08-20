#!/usr/bin/env ruby
#word_bank=["rt4.","tree","   t","4444","     "]
word_bank = ["harry"]


hangman = word_bank.sample
hangman_letters = hangman.split(//)

blank = "_"*hangman.length
blank_array = blank.split(//)

puts "what is your guess"
response = gets.chomp

if hangman_letters.include?(response)
  slot = hangman_letters.each_index.select{|i| hangman_letters[i] == response}
  slot.each {|i| blank_array.slice!(i)}
  p blank_array
  slot.each{|i| blank_array.insert(i, response)}
  blank = blank_array.join.delete"\""
  print blank
end
print blank.to_s if !hangman_letters.include?(response)

puts



print hangman







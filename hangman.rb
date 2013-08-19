#!/usr/bin/env ruby
word_bank=["rt4.","tree","   t","4444","     "]



hangman = word_bank.sample.chomp
while hangman =~ /\s\d\W/
  hangman = word_bank.sample.chomp
  if hangman !=~ /\s\d\W/
    puts "_" * hangman.length
  end
end





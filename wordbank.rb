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

#reevaluate

 hangman = word_bank.sample
if /[\s\d\W]/.match(hangman)
  puts "yes"
  hangman = word_bank.sample
else /[a-z]/.match(hangman)
    puts "_" * hangman.length
end

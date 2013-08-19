string = "wordy"
new_string = string
string.length.times do
  new_string = new_string.sub('', '_')
end

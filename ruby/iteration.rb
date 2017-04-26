def status
  puts "Status message"
  yield("New", "Awesome")
end 

status{ |word1, word2| puts "#{word1}, way more #{word2} status message!!"}
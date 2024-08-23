def substrings(inp, check_arr)
  hash = Hash.new(0)
  check_arr.select{|val| inp.include?(val)}.each { |val| hash[val]+=1 }
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

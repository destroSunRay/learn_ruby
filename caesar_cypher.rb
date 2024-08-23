def caesar_cypher(inp_str, shift_factor)
  inp_chars = inp_str.chars.map do |char|
    if char.between?('a','z')
      ((char.ord-'a'.ord+shift_factor)%26+'a'.ord).chr
    elsif char.between?('A','Z')
      ((char.ord-'A'.ord+shift_factor)%26+'A'.ord).chr
    else
      char
    end
  end
  inp_chars.join
end

print "Input the string to encrypt: "
inp = gets.chomp

print "enter the number of places to shit:"
shift = gets.chomp.to_i

puts "The Caesar cyphered text of #{inp} shifted by #{shift} values is: #{caesar_cypher(inp, shift)}"
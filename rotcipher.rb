class Rot_Cipher
def cipher (string, shift)
  puts "This is a caesar cipher. Please put in text to encode"
  string = gets.chomp
  puts "Please put in encoding level"
  shift = gets.chomp.to_i
  alphabet = Array('A'..'Z') + Array('a'..'z')
  rotate = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map{ |c| rotate.fetch(c)}
end
end

test = Rot_Cipher.new
puts test.cipher("Blank", 1).join

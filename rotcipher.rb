class Rot_Cipher
def cipher (string, shift)
  alphabet = Array('A'..'Z') + Array('a'..'z')
  rotate = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map{ |c| rotate.fetch(c)}
end
end

test = Rot_Cipher.new
puts test.cipher("CIPHeR", 1).join

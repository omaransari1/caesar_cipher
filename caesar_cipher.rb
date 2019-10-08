#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

# Takes in a string and shift factor/offset as arguments, prints out resulting string

# - get characters of string and map them to array
# - assign a to z to array of numbers
# - spaces and special characters should stay the same.
# -iterate through array of chars of original string and map to new array of encrypted characters


def caesar_cipher(string, shift_factor)


  upc_alphabet_arr = ('A'..'Z').to_a
  downc_alphabet_arr = ('a'..'z').to_a


  string_chars_arr = string.chars

  new_chars_arr = []

  string_chars_arr.each do |char|
    if upc_alphabet_arr.include?(char)
      new_index = (upc_alphabet_arr.index(char) + shift_factor)%26
      new_char = upc_alphabet_arr[new_index]

      new_chars_arr << new_char

    elsif downc_alphabet_arr.include?(char)
      new_index = (downc_alphabet_arr.index(char) + shift_factor)%26
      new_char = downc_alphabet_arr[new_index]

      new_chars_arr << new_char

    else 
      new_chars_arr << char
    end
  end

  new_string = new_chars_arr.join("")
  puts new_string
end

caesar_cipher("Hello, buddy!", 5)




































# puts "This is a caesar_cipher"
# puts "Type caesar_cipher(your_string, shift) and it will return your encrypted result"
# def caesar_cipher (string, shift)
#     string = string.chars.map do |c| 
#         if c.match(/[A-Z]/)
#             c.downcase!
#             c = shifter(c, shift)
#             c.upcase!
#         elsif c.match(/[a-z]/)
#             shifter(c, shift)
#         else 
#             c
#         end
#     end
#     string.join("")
# end
# def shifter (char, number)
#     alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
#     char = alphabet[(alphabet.index(char) + number)%26]
# end
# puts caesar_cipher("There we go!", 5)
def caesar_cipher(str, n)
  str_final=""
  str_to_array=str.split(" ")
  print str_to_array
  puts ""
  str_to_array.each do |word|
    if str_final==""
      str_final = caesar_cipher_word(word,n)
    else str_final=str_final+" "+caesar_cipher_word(word,n)
    end
  end
  return str_final
end


def caesar_cipher_word(word,n)
  word_length = word.size
  word_ciphered= ""
  for index in 0...word_length do
    word_ciphered=word_ciphered+((word[index].ord)+n).chr
  end
  return word_ciphered

end
puts caesar_cipher("What a string!", 1)

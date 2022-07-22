def caesar_cipher (message, shift_num)
    # Create hash contains alphabetical table
    alpha_table = Hash.new()

    (('a'..'z')).each_with_index do | letter, index |
      alpha_table[index + 1] = letter
    end

    message_lower = message.downcase

    deciphered_mesage = ''
    
    message_lower.split('').each do | char |
      # Check if letter needs to be deciphered, otherwise use existing character (space, !, etc.)
      if alpha_table.has_value?(char)
        new_letter_key = alpha_table.key(char) + shift_num
        
        if new_letter_key > 26
          deciphered_mesage << alpha_table[new_letter_key - 26]
        else
          deciphered_mesage << alpha_table[new_letter_key]
        end
        
      else
        deciphered_mesage << char
      end
    end
  
  return deciphered_mesage.capitalize
end

puts caesar_cipher("What a string!", 5)
# should return "Bmfy f xywnsl!"
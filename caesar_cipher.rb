def caesar_cipher(text, shift)
    return "" if text.nil?
  
    ciphered = ""
  
    for i in 0...text.length
      char = text[i]
      
      if ('a'..'z').include?(char)
        new_code = ((char.ord - 'a'.ord + shift) % 26) + 'a'.ord
        ciphered << new_code.chr
      elsif ('A'..'Z').include?(char)
        new_code = ((char.ord - 'A'.ord + shift) % 26) + 'A'.ord
        ciphered << new_code.chr
      else
        ciphered << char
      end
    end
  
    ciphered
  end
  
  original_text = "Hello, this is an example of Caesar cipher!"
  shift = 5
  ciphered_text = caesar_cipher(original_text, shift)
  
  puts "Original text: #{original_text}"
  puts "Ciphered text: #{ciphered_text}"
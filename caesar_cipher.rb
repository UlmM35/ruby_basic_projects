def caesar_cipher(string_to_ciphered, shift = 1)
  string_to_ciphered.chars.map(&:ord).map do |string|
    if string.between?(65, 90)
      ((string - 65 + shift) % 26) + 65
    elsif string.between?(97, 122)
      ((string - 97 + shift) % 26) + 97
    else
      string
    end
  end.map(&:chr).join
end

caesar_cipher("What a string!", 5)
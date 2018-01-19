def caesar_cypher(input_str, key)
  upcase_alphabet = ('A'..'Z').to_a
  downcase_alphabet = ('a'..'z').to_a

  input_str = input_str.split("")
  answer = []
  input_str.each do |character|
    if upcase_alphabet.include?(character)
      answer.push(upcase_alphabet[index_returns_to_alphabet_start(upcase_alphabet.index(character) + key)])
    elsif downcase_alphabet.include?(character)
      answer.push(downcase_alphabet[index_returns_to_alphabet_start(downcase_alphabet.index(character) + key)])
    else
      answer.push(character)
    end
  end
  answer.join("")
end

def index_returns_to_alphabet_start(index)
  if index > 25
    index = index - 26
  end
  index
end

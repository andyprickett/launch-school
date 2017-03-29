def an_ip_number?(word)
  %w(100 68 0 1).include?(word)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    return false unless an_ip_number?(word)
  end

  true
end

puts dot_separated_ip_address?('463.68.0.1')
puts dot_separated_ip_address?('100.68.0.1')

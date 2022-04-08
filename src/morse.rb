# Create a method to decode a Morse code character
MORSES = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
}

def decode_char(char)
  MORSES.each do |key, value|
    return value if key.eql? char
  end
end

puts decode_char('.-')

# Create a method to decode an entire word in Morse code

def decode_word(word)
  arr = []
  word.split.each do |e|
    arr << decode_char(e)
  end
  arr.join
end

puts decode_word('-- -.--')

# # Create a method to decode the entire message in Morse code

def decode(message)
  mymessage = []
  word = message.split('   ')
  word.each do |e|
    mymessage << decode_word(e)
  end
  mymessage = mymessage.join(' ')
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ... ')
$hash = {".-" => "A" ,
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z",
  ".----" => "1",
  "..---" => "2",
  "...--" => "3",
  "....-" => "4",
  "....." => "5",
  "-...." => "6",
  "--..." => "7",
  "---.." => "8",
  "----." => "9",
  "-----" => "0",
}

def decode_char(char)
  $hash.each{ |key, value| return "#{value}" if key == char}
  return
end

def decode_word(word)
  _splitted = word.split
  _result = []
  _splitted.each do |i| 
    _result.push(decode_char(i))
  end
  return _result.join
end

def decode(phrase)
  _splittedPhrase = phrase.split("   ");
  _result = []
  _splittedPhrase.each do |i|
    _result.push(decode_word(i))
  end
  return _result.join(" ")
end

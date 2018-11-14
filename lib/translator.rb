require 'yaml'

def load_library(file_path)
  file = YAML.load_file('emoticons.yml')
  file
  
  hash  = {
    "get_meaning" => {
      "☜(⌒▽⌒)☞" => "angel",
      "ヽ(ｏ`皿′ｏ)ﾉ" => "angry",
      "(ΘεΘ;)" => "bored",
      "(゜.゜)" => "confused",
      "(#^.^#)" => "embarrased",
      ">゜))))彡" => "fish",
      "(^0_0^)" => "glasses",
      "(￣ー￣)" => "grinning",
      "(＾ｖ＾)" => "happy",
      "(*^3^)/~☆" => "kiss",
      "(Ｔ▽Ｔ)" => "sad",
      "o_O" => "surprised",
      "(^_-)" => "wink"
    },
    "get_emoticon" => {
      "O:)" => "☜(⌒▽⌒)☞",     
      ">:(" => "ヽ(ｏ`皿′ｏ)ﾉ",
      ":O" => "(ΘεΘ;)",
      "%)" => "(゜.゜)",
      ":$" => "(#^.^#)",
      "><>" => ">゜))))彡",
      "8D" => "(^0_0^)",
      "=D" => "(￣ー￣)",
      ":)" => "(＾ｖ＾)",
      ":*" => "(*^3^)/~☆",
      ":'(" => "(Ｔ▽Ｔ)",
      ":o" => "o_O",
      ";)" => "(^_-)"
    }
  }
  
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  thing = load_library(file_path)
  
  japanese_emoticon = nil
  
  if thing["get_emoticon"].include?(emoticon)
    thing["get_emoticon"].each do |english_emoji, emoji|
      if english_emoji == emoticon 
        japanese_emoticon = emoji
      end 
    end
    else 
      return "Sorry, that emoticon was not found"
  end 
  
  japanese_emoticon
end

def get_english_meaning(file_path, emoticon)
  thing = load_library(file_path)
  
  english_meaning = nil
  
  if thing["get_meaning"].include?(emoticon)
    thing["get_meaning"].each do |japanese_emoji, meaning|
      if japanese_emoji == emoticon 
        english_meaning = meaning
      end 
    end
    else 
      return "Sorry, that emoticon was not found"
  end 
  
  english_meaning
end
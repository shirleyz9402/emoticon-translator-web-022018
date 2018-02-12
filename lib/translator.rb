require "yaml"

def load_library(emoticons)
  emoticons = YAML.load_file('lib/emoticons.yml')
  hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |meaning, emoticons|
    hash["get_meaning"][emoticons[1]] = meaning
    hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end 
  hash
end

def get_japanese_emoticon(emoticons, emoticon)
  
end

def get_english_meaning
  # code goes here
end
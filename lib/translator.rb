require "yaml"

def load_library(emoticons)
  emoticons = YAML.load_file('lib/emoticons.yml')
  hash = {
    "get_meaning" => {}
    "get_emoticon" => {}
  }
  emoticons.each do |meaning, emoticon|
    hash["get_emoticon"][emoticons[1]] = meaning
    hash["get_meaning"]
  end 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
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

def get_japanese_emoticon(emoticons_file, emoticon)
  emoticons = load_library(emoticons_file)
  if emoticons["get_emoticon"][emoticon] == nil
    "Sorry, that emoticon was not found"
  else 
    emoticons["get_emoticon"][emoticon]
end

def get_english_meaning
  # code goes here
end
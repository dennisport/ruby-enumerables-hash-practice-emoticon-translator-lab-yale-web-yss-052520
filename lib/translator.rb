# require modules here
require 'yaml'
require 'pry'

def load_library(path)
 data = YAML.load(path)
 emoticon_hash = {"get_meaning" => {}, "get_emoticon" => {}}
 data.each do |english_word, emoticons|
   binding.pry
  emoticon_hash["get_meaning"][emoticon[1]] = english_word
  emoticon_hash["get_emoticon"][emoticons[0]] = emoticons
  binding.pry
end
emoticon_hash
binding.pry
end


def get_english_meaning(path, emoticon)
  # code goes here
  library = load_library(path)
  emoticon = library.keys.find do |key|
 if !emoticon
   "Sorry, that emoticon was not found"
  else 
    emoticon
  end
end
  
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  library = load_library(path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
end
emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

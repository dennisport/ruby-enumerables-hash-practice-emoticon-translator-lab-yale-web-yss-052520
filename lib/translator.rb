# require modules here
require 'yaml'
require 'pry'

def load_library(path)
 data = YAML.load(path)
 


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

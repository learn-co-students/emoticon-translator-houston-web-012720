# require modules here
require 'yaml'
require 'pry'

def load_library(filepath)
  # code goes here
  raw = YAML.load_file(filepath)
  sorted = {:get_meaning => {}, :get_emoticon =>{}}
  raw.each { |meaning, emoticons|
    sorted[:get_meaning][emoticons[1]] = meaning
    sorted[:get_emoticon][emoticons[0]] = emoticons[1]
  }
  sorted
end

def get_japanese_emoticon (filepath, eng_emoticon)
  # code goes here
  val = load_library(filepath)[:get_emoticon][eng_emoticon]
  if !val
    val = "Sorry, that emoticon was not found"
  end
  val
end

def get_english_meaning(filepath, jap_emoticon)
  # code goes here
  val = load_library(filepath)[:get_meaning][jap_emoticon]
  if !val
    val = "Sorry, that emoticon was not found"
  end
  val
end

emo = load_library('lib/emoticons.yml')

# binding.pry

0

{"angel"=>["O:)", "☜(⌒▽⌒)☞"],
 "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
 "bored"=>[":O", "(ΘεΘ;)"],
 "confused"=>["%)", "(゜.゜)"],
 "embarrased"=>[":$", "(#^.^#)"],
 "fish"=>["><>", ">゜))))彡"],
 "glasses"=>["8D", "(^0_0^)"],
 "grinning"=>["=D", "(￣ー￣)"],
 "happy"=>[":)", "(＾ｖ＾)"],
 "kiss"=>[":*", "(*^3^)/~☆"],
 "sad"=>[":'(", "(Ｔ▽Ｔ)"],
 "surprised"=>[":o", "o_O"],
 "wink"=>[";)", "(^_-)"]}
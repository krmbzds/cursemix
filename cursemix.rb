require 'sinatra'
require 'haml'

prefix = ["nut", "dildo", "testicle", "trash", "wench", "meat", "mouth", "whore", "fetus", "prick", "rectum", "scrotum", "pecker", "sissy", "'gina", "muff", "panty", "cock", "fuck", "twat", "douche", "nipple", "bitch", "queef", "pussy", "mother", "cunt", "tampon", "ball", "ass", "sperm", "cooch", "juice", "clit", "jizz", "fart", "granny", "tit", "cum", "schlong", "diaper", "wiener", "fetus", "scum", "slut", "crap", "butt", "snot", "piss", "nut", "dildo", "testicle"]

suffix = ["bag", "wad", "biscuit", "waffle", "wipe", "chomper", "nibbler", "flaps", "sandwich", "skank", "jockey", "lips", "munch", "slammer", "blower", "stain", "wrangler", "fungus", "pooper", "pincher", "beater", "licker", "tickler", "clot", "lover", "dangler", "farm", "boner", "packer", "slime", "gobbler", "folds", "gargler", "biter", "donkey", "twister", "booger", "nugget", "eater", "pooper", "dumpster", "monster", "wanker", "plug", "sucker", "bucket", "fucker", "hole", "jammer", "glob", "shitter", "junkie", "jacket", "blower", "fondler"]

spc_curses = ["shit faced cock master", "donkey raping shit eater", "pig fucker", "uncle fucker",
              "fucking fat ass", "fuckity-fuck-fuck-fuck", "butt-fuckin' son of a bitch", "buttfucker",
              "Dog-shit taco", "Blood-drenched frozen tampon Popsicle",
              "Fuck, shit, cock, ass, titties, boner, bitch, muff, pussy, cock, butthole, Barbra Streisand!",
              "stupid cumbucket", "fattest fucking piece of shit in the world", "big floppy donkey dick",
              "horse fucker", "Fucking Windows '98!"]

def random_curse(prefix, suffix)
  prefix.sample.capitalize + " " + suffix.sample.capitalize
end

def random_spc_curse(spc_curses)
  spc_curses.sample.capitalize
end

get '/' do
  haml :index, :locals => {:curse => random_curse(prefix, suffix)}
end

get '/spc' do
  haml :index, :locals => { :curse => random_spc_curse(spc_curses) }
end
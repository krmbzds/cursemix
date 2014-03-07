var prefixes=new Array("nut", "dildo", "testicle", "trash", "wench", "meat", "mouth", "whore", "fetus", "prick", "rectum", "scrotum", "pecker", "sissy", "'gina", "muff", "panty", "cock", "fuck", "twat", "douche", "nipple", "bitch", "queef", "pussy", "mother", "cunt", "tampon", "ball", "ass", "sperm", "cooch", "juice", "clit", "jizz", "fart", "granny", "tit", "cum", "schlong", "diaper", "wiener", "fetus", "scum", "slut", "crap", "butt", "snot", "piss", "nut", "dildo", "testicle");
var suffixes=new Array("bag", "wad", "biscuit", "waffle", "wipe", "chomper", "nibbler", "flaps", "sandwich", "skank", "jockey", "lips", "munch", "slammer", "blower", "stain", "wrangler", "fungus", "pooper", "pincher", "beater", "licker", "tickler", "clot", "lover", "dangler", "farm", "boner", "packer", "slime", "gobbler", "folds", "gargler", "biter", "donkey", "twister", "booger", "nugget", "eater", "pooper", "dumpster", "monster", "wanker", "plug", "sucker", "bucket", "fucker", "hole", "jammer", "glob", "shitter", "junkie", "jacket", "blower", "fondler");

function capitalize(s) {
return s.charAt(0).toUpperCase() + s.slice(1);
}

function randomSelect(s) {
return s[Math.floor(Math.random()*s.length)]
}

function randomCurse() {
var prefix = capitalize(randomSelect(prefixes));
var suffix = capitalize(randomSelect(suffixes));
return prefix + " " + suffix;
}

var result = randomCurse();

string = "the-stealth-warrior".gsub(/-[a-z]|_[a-z]/, &:upcase)

string = string.gsub(/[-_]/, '')
puts string
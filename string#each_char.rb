#Code Samples
#String#each_char

string = "Treehouse"
string.each_char{|c| print "#{c}-"} 

# This prints out:
"T-r-e-e-h-o-u-s-e"

# String#each_line
haiku = <<-EOF
A string with three lines
Is considered multi line
Ruby code haiku
EOF

haiku.each_line{ |line| puts "* #{line}" }

# Prints the following
* A string with three lines
* Is considered multi line
* Ruby code haiku

# integer#down_to
5.downto(3) { |}
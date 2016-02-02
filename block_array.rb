# Given the following array:
array = [1,2,3]

# Array#each
array.each { |item| print "-#{item}-"}

# Prints out:
# -1--2--3-

# Array#select
array.select {|item| item > 2 }

# The above returns a new array: [1, 2]
# [3]

# Array#delete_if
array.delete_if { |item| item == 1 }

# The array is now:
# [2, 3]

#Array#reject
array.reject { |item| item % 3 == 0 }

# The above returns a new array: [1, 2]

# Array#count
array.count { |item| item % 3 == 0 }

# The above statement returns 1.

# Hashes
# Given the following hash:
hash = { 'name' => 'Jason', 'location' => 'Treehouse' }

# Hash#each
hash.each do |key, value|
  puts "key: #{key} value: #{value}"
end

#Prints the following:
# key: name value: Jason
# key: location value: Treehouse

# hash#each_key
hash.each_key{ |key| puts "key: #{key}" }

# Prints the following:
# key: name
# key: location

#Hash#each_value:
hash.each_value { |val| puts "val: #{val}" }

# Prints the following:

# val: Jason
# val: Treehouse

# Hash#keep_if

hash.keep_if{ |key, val| key == "name" }

# The hash is now:

{ 'name' => 'Jason' }

# Hash#reject

hash.reject { |key, val| key == "name" }

# The hash is now:

{}

# Hash#select

hash.select { |key, val| key == "name" }

# Returns a new hash:

{ 'name' => 'Jason' }


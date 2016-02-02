loop do
	print "Do you want to continue? (y/n) "
	answer = gets.chomp.downcase
	if answer == "n"
		break
	end
end


numbers = []

number = 0

loop do
  numbers.push(number)
  number + 1
  if numbers.length >= 3
    break
  end
end
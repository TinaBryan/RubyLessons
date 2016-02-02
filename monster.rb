class Monster
	attr_reader :name, :actions

	def initialize(name)
		@name = name
		@actions = {
			screams: 0,
			scares: 0,
			runs: 0,
			hides: 0
		}
	end

	def inspect
		"<#{name}, {actions}>"
	end
	
	def say(&block)
		print "#{name} says... "
		yield
	end

	def print_scoreboard
		puts "-" * 30
		puts "#{name} scoreboard"
		puts "-" * 30
		puts "- Screams: #{actions[:screams]}"
		puts "- Scares: #{actions[:scares]}"
		puts "- Runs: #{actions[:runs]}"
		puts "- Hides: #{actions[:hides]}"
	end

	def scream(&block)
		actions[:screams] += 1
		print "#{name} screams! "
		yield
	end

	def scares(&block)
		actions[:scares] += 1
		print "#{name} scares you! "
		yield
	end

	def runs(&block)
		actions[:runs] += 1
		print "#{name} runs! "
		yield
	end

	def hides(&block)
		actions[:hides] += 1
		print "#{name} hides! "
		yield self if block_given?
	end
end

	monster = Monster.new("Fluffy")
	monster.say { puts "Welcome to my home."}
	puts monster.actions

	monster.scream do 
		puts "BOO!"
	end

	monster.scares do 
		puts "Go away!"
	end

	monster.runs do 
		puts "Going to get you!"
	end

	monster.hides do |m|
		puts "Running away and hiding!"
		puts m.actions.inspect
	end
	monster.print_scoreboard



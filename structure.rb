require './script.rb'

joke = ChuckJokes.new

if ARGV[0] == 'help'
	joke.help 
end

if ARGV[0] =='random'
	id = ARGV[1]
	joke.get_joke_by_id(id)
end


if ARGV[0] =='change'
	first = ARGV[1]
	last = ARGV[2]
	joke.replace_name(first, last) 

end

if ARGV[0] =='any'
	random_joke = ChuckNorris::JokeFinder.get_joke
	puts random_joke.joke

end


# require 'rainbow'
require 'chuck_norris'

# puts Rainbow("this is red").red
# puts Rainbow("this on yellow bg").bg(:yellow)
# puts Rainbow("even bright underlined!").underline.bright
require 'rest-client'
require 'pry'
require './structure.rb'


# random_joke = ChuckNorris::JokeFinder.get_joke
# joke.id # => 497
# puts random_joke
# puts random_joke.joke
# joke.joke # => "If Chuck Norris writes code with bugs, the bugs fix themselves." 
# joke.categories # => ["nerdy"]

class ChuckJokes
	attr_accessor :name
	def initialize()
	end

  def help
  	p 'Don\'t tell anyone you made mistakes working on Chuck Norris workshop 😆'
  end

  def get_joke_by_id(id)
  	bug_joke = ChuckNorris::JokeFinder.find_joke(id)
    puts bug_joke.joke
  end

  def replace_name(first, last)
  	# sentence = ChuckNorris::JokeFinder.get_joke(first_name: "John", last_name: "Murphy")
	# sentence.sub 'Chuck Norris', 'woooo'
	joke = ChuckNorris::JokeFinder.get_joke(first_name: first, last_name: last)
	puts joke.joke
  end

  def random
  	random_joke = ChuckNorris::JokeFinder.get_joke
	puts random_joke.joke
  end
end

# joke.replace_name("john", "murphy")
# joke.get_joke_by_id(5)
# joke.help




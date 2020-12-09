puts "Hello World"
puts "Hello World 2"
# Automatic type casting does not working in Ruby
# puts 3 + "4" -> Does not work.
puts 
# This is just a line break
# Prints is just puts, but there is not automatic line break
print "This is one the first line "
print "This is still on the first line! :("

# There's also p, it'll print the equivalent string.
p "Hello"

# Parallel assignment
a,b,c = 10,20,30

=begin    
gets will ask the user for an input. 
by defult, it'll have a \n at the end. 
name = gets.chomp
Chomp will remove the \n at the end of a string. 
1. They have something similar to jshell, called irb
irb exit -> exit or ctrl + d 

Defining a function

def newFn
	puts "Hello World"
end

> hi
> hi()
BOTH will call the function
def hi(name)

=begin and =end is how you do multi-line ruby comments.
=end

# The if and else, you still need an end block. 
# ! works in Ruby as a comparator. || &&.
# elsif. Not elif or else if. 


# Range : x = 1..100 
# x.to_a, will give you [1,2,3, ... 100]
# x.include(5) 
# For Loop : 
# for i in z
# print z
# end 

# z.each {|i| print i }

# Hashes 
sample_dict = {'a' => 1, 'b' => 2, 'c' => 3}
p sample_dict['a'] # prints out 1. 

# Symbols in ruby. Note the colon and the => instead.
# This will make a into a "variable". 
sample_dict = {a: 1, b: 2, c: 3}
p sample_dict[:a]
p sample_dict.keys
p sample_dict.values

# Loop through dictionaries
sample_dict.each do |key, value|
	puts "The value #{value} is #{key}"
end 
sample_dict.each {|key, value| puts "The value #{value} is #{key}"}
# Add to the dictionary
sample_dict[:e] = "5"
sample_dict[:newKey] = "10"
sample_dict.each {|key, value| puts "The value #{value} is #{key}"}

currentUsers = [
	{ username: "user1", password: "password1" },
	{ username: "user2", password: "password2" },
	{ username: "Bob", password: "BobIsHandsome" }
]

p currentUsers[1][:username]
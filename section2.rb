puts 3.14.class
puts [1,2,4].class
puts "Hello"
# finds the class for each primitive.
# We can find the methods for a class !
# puts 3.14.methods.sort
# If we want to find a common method
# puts 3.14.methods & 3.methods


class Human 
    attr_accessor: username, :extraVar # Reads and writes 
    attr_reader: password # Only reads 
    attr_writer: age # Can write the age, cannot read.

    def initialize(username, password, age, extraVar)
        @username = username 
        @password = password
        @age = age
        @extraVar = extraVar
    end

    def to_s
        "This is the to_String method for Human"
    end

end

# Instancing of a new Object
newObj = Human.new("Bob",5,20,40)
print newObj

=begin Now, with the accessor and reader and writer, we can pull
the values out and change them. We can now do the following :
newObj.age = 50
p newObj.reader

    attr_accessor: username, :extraVar # Reads and writes 
    attr_reader: password # Only reads 
    attr_writer: age # Can write the age, cannot read.

    Everything else is automatically private. Without thes e^ 

=end 

# Inheritance 
class Gangster < Human 

end

class superGangster < Gangster

end
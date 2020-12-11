dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }

  # Get city names from the hash
  def get_city_names(somehash)
    return somehash.keys
  end

  # Get area code based on given hash and key
    def get_area_code(somehash, key)
        if somehash.key?(key) == true
            return "The area code for this city is #{somehash[key]}"
        else
            return "Invalid key! Try again"
        end
    end

=begin 
puts get_area_code(dial_book,"orlando")
puts get_area_code(dial_book,"bob")

=end  

# Execution flow
loop do
    puts "Do you want to lookup an area code? (Y/N)";
    break if gets.chomp.downcase != "y";
    puts "Which city do you want the area code for?";
    get_city_names(dial_book).each {|city| puts city};
    puts "Enter the city name"
    puts get_area_code(dial_book, gets.chomp.downcase)
    end

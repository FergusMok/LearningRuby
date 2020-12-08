currentUsers = [
	{ username: "user1", password: "password1" },
	{ username: "user2", password: "password2" },
	{ username: "Bob", password: "BobIsHandsome" }
]

puts "Welcome to my Password Authentication Program!
You have 5 incorrect tries before this program explodes :("
25.times { print "-" }

counter = 0
loggedIn = false
while counter < 5
	puts "Insert your username"
	userName = gets.chomp
	booleanSwitch = false

	currentUsers.each do |keyPair| 
		if keyPair[:username] == userName
			booleanSwitch = true
		end
	end

	if booleanSwitch == false
		counter = counter + 1;
		puts "User Name does not exist! :( Tries before exploding #{5-counter}"
	else
		booleanSecondSwitch = false
		newPassword = gets.chomp
		currentUsers.each do |keyPair| 
			if keyPair[:username] == userName && keyPair[:password] == newPassword
				booleanSecondSwitch = true
			end
		end

		if booleanSecondSwitch == true
			puts "Logged In! Welcome #{userName}"
			loggedIn = true
			break
		else
			counter = counter + 1;
			puts "Password Incorrect :( Tries before exploding #{5-counter}"
		end
	end
end

if loggedIn != true
	puts "Explosion!"
end

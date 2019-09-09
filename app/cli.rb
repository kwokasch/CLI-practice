class Cli 
    attr_reader :user

    def initialize user
        @user = user
    end

    def start
        puts "Hi, #{user.name}! What is your favorite animal? Cat or Dog?"
        animal = gets.chomp.downcase
        speak(animal)
        menu
    end

    def speak(animal)
        if animal == "cat"
            puts "meow meow, #{user.name}"
        elsif animal == "dog"
            puts "woof woof, #{user.name}"
        else
            puts "Not a valid animal, choose again."  
            start 
        end
    end

    def menu
        puts "Now what would you like to do? Enter number."
        puts "1. Enter a new animal.\n 2. Quit program."
        user_choice = gets.chomp.to_i
        if user_choice == 1
            start
        elsif user_choice == 2
            exit
        else 
            puts "Not a valid option, choose again."
            menu
        end
    end
end
class GuessingGame

  def initialize
  end

  def self.run
    @random_number = makes_random_number
    @tries = 0
    puts "Guess a number between 1 and 100"
    guess = gets.chomp
    while @tries != "win" do
     take_a_guess(guess.to_i)
     guess = gets.chomp
    end
  end

  def self.makes_random_number
   rand(0..100)
  end

  def self.take_a_guess(guess)
    if guess < @random_number
      puts "The number is higher than #{guess}. Guess again"
      @tries += 1
    elsif guess > @random_number
      puts "The number is lower than #{guess}. Guess again"
      @tries += 1
    else
      puts "you got it in #{@tries} tries"
      @tries = "win"
    end  
  end


end

GuessingGame.run

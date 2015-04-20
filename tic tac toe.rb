class TicTacToe

	def initialize
		@player1 = Player.new
		@player2 = Player.new
		game_sequence
	end

	def game_sequence
		puts "Let us play a nice game of Tic Tac Toe!"
		player_names

	end
	
	def player_names
		puts "Player 1, what is your name?"
		@player1.name = gets.chomp
		puts "Thanks, #{@player1.name}!  Would you like to be X or O?"
		
		answer = ""

		until ["X","O"].include?(answer)
			answer = gets.chomp
			if ["X","O"].include?(answer)
				@player1.mark = answer
				break
			end
			puts "You must enter in either X or O"
		end

		case @player1.mark
		when "X"
			@player2.mark = "O"
		when "O"
			@player2.mark = "X"
		end

		puts "#{@player1.name}\'s mark is #{@player1.mark} and Player 2\'s mark is #{@player2.mark}"
		puts "Player 2, what is your name?"
		@player2.name = gets.chomp

	end

	class Player
		
		attr_accessor :name, :mark
		
		def initialize(name = nil, mark = nil)
			@name = name
			@mark = mark
		end

	end

end

TicTacToe.new
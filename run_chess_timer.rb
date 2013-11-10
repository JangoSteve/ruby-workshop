require './chess_timer'

@player_1 = ChessTimer.new("DJ")
@player_2 = ChessTimer.new("Carrie")

@player_1.activate
@currently_active = @player_1

@player_1.start
@player_2.start

begin
  loop do
    input = gets.chomp
    if input == "s"
      @currently_active.stop
      if @currently_active == @player_1
        @currently_active = @player_2
      else
        @currently_active = @player_1
      end
      @currently_active.activate
    end
  end
rescue Interrupt
  print "\n"
  puts "Exiting."
  exit!
end

class ChessTimer
  attr_accessor :timer, :active, :name

  def initialize(name="Player")
    self.timer = 0
    self.active = false
    self.name = name
  end

  def start
    Thread.new do
      loop do
        if self.active
          sleep 1
          self.timer += 1
          print "\r#{self.name}: #{Time.now}"
        end
      end
    end
  end

  def activate
    self.active = true
  end

  def stop
    self.active = false
  end
end

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

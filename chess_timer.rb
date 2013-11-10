class ChessTimer
  attr_accessor :timer, :active, :name

  def initialize(name="Player")
    self.timer = 0
    self.active = false
    self.name = name
  end

  def start
    self.activate
    loop do
      if self.active
        sleep 1
        self.timer += 1
        print "\r#{self.name}: #{Time.now}"
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

@player_1.active = true

@currently_active = @player_1

begin
  @currently_active.start
rescue Interrupt
  print "\n"
  puts "Exiting."
  exit!
end

Thread.new do
  loop do
    input = gets.chomp
    if input == "s"
      @currently_active.stop
      if @currently_active == @player_1
        @currently_active = @player_2
      else
        @currently_active = @player_1
      end
      @currently_active.start
    end
  end
end

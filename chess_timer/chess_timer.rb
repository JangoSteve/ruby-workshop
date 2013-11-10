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

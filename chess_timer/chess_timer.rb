class ChessTimer
  attr_accessor :timer, :active, :name, :logging

  def initialize(options={})
    self.timer = 0
    self.active = false
    self.name = options[:name] || "Player"
    self.logging = options[:logging].nil? ? true : options[:logging]
  end

  def start
    Thread.new do
      loop do
        if self.active
          sleep 1
          self.timer += 1
          print "\r#{self.name}: #{Time.now}" if self.logging
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

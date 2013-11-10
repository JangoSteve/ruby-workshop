require './chess_timer'

describe ChessTimer do
  before do
    @player = ChessTimer.new
  end

  describe "#initialize" do
    it "has timer set to 0" do
      @player.timer.should eq(0)
    end

    it "has default name of Player" do
      @player.name.should eq("Player")
    end

    it "has name set as passed in options" do
      player = ChessTimer.new("Steve")
      player.name.should eq("Steve")
    end
  end

  describe "#start" do
    it "has timer of 0 when not active" do
      @player.start
      sleep 1
      @player.timer.should eq(0)
    end

    it "has timer greater than 0 when active" do
      @player.activate
      @player.start
      sleep 2
      @player.timer.should be > 0
    end
  end
end

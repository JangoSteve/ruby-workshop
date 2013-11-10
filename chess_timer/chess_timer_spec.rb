require './chess_timer'

describe ChessTimer, "#initialize" do
  it "has timer set to 0" do
    player = ChessTimer.new
    player.timer.should eq(0)
  end

  it "has default name of Player" do
    player = ChessTimer.new
    player.name.should eq("Player")
  end

  it "has name set as passed in options" do
    player = ChessTimer.new("Steve")
    player.name.should eq("Steve")
  end
end

describe ChessTimer, "#start" do
  it "has timer of 0 when not active" do
    player = ChessTimer.new
    player.start
    sleep 1
    player.timer.should eq(0)
  end

  it "has timer greater than 0 when active" do
    player = ChessTimer.new
    player.activate
    player.start
    sleep 2
    player.timer.should be > 0
  end
end

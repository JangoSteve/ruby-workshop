class Timer
  def count_up i
    1.upto i do |n|
      sleep 1
      print "\r#{Time.now}"
    end
    print "\n"
    1
  end
end

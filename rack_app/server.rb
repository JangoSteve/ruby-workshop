require 'rack'

class MyServer
  def call(env)
    puts "Hello, a request was made at #{Time.now}"
    [200, {"Content-Type" => "text/html"}, File.open('./index.html')]
  end
end

my_server = MyServer.new
Rack::Handler::Thin.run my_server, :Port => 9292

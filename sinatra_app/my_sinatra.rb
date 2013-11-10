require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  @time = Time.now
  erb :index
end

get '/hi/:name?' do
  name = params[:name] || "Anon"
  "Hello, #{name}"
end

post '/file' do
  input = params[:file_string_input]
  file_text = params[:file_body_input]
  FileUtils.touch input
  File.open("./files/#{input}", 'w') do |file|
    file << file_text
  end
  "Success!"
end

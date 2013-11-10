['app', 'run'].each do |dir|
  Dir.foreach("./#{dir}") do |item|
    next if item == '.' or item == '..'
    require "./#{dir}/#{item}".gsub('.rb', '')
  end
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "caller_name"
    gemspec.summary = "get the caller method name from ruby context"
    gemspec.description = "get the caller method name from ruby context"
    gemspec.email = "tim.rubist@gmail.com"
    gemspec.homepage = "http://github.com/tteng/caller_method_name"
    gemspec.authors = ["Tim Teng"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

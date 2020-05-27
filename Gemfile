source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'minitest'
gem 'rubocop', '~> 0.84.0', require: false
gem 'o_stream_catcher'
gem 'pry', '~> 0.12.2'

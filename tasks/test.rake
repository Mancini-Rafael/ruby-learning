require "rake/testtask"

Rake::TestTask.new(:test_all) do |t|
  t.warning = false
  t.test_files = FileList['tests/**/*_test.rb']
end
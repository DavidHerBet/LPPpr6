task :default => :bin

desc "Run bin/ppt_main.rb"
task :bin do
  sh "ruby -Ilib bin/ppt_main.rb"
end

desc "Run tests with --format documentation"
task :test do
  sh "rspec -Ilib test/ppt_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
  sh "rspec test/ppt_spec.rb --format html > resultados.html"
end

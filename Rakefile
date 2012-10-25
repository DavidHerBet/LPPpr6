task :default => :play

desc 'Run bin/ppt_main.rb'
task :bin do
  sh "ruby -Ilib bin/ppt_main.rb parametro"
end

desc 'Run tests with --format documentation'
task :test do
  sh "ruby -Ilib test/ppt_spec.rb"
end

desc 'Run tests with format: html'
task :thtml do
  sh "ruby -Ilib test/ppt_spec.rb"
end
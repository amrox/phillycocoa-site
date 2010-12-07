require 'ftools'

Dir['tasks/**/*.rake'].sort.each { |rakefile| load rakefile }

task :copy_skel do
  puts 'Copying files from skel'
  system %{cp -r skel/* output}
  #File.copy "skel/*", "output"
end

task :compile do
  system %{nanoc2 compile}
end
  
task :default => [:copy_skel, :compile]

task :clean do
  system %{rm -rf output/*}
end
  

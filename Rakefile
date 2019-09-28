require "bundler/gem_tasks"

namespace :cucumber_rake_runner do

  desc "STDOUT test"
  task :stdout_test do
    puts "String expected to be sent to STDOUT"
  end

  desc "STDERR test"
  task :stderr_test do
    STDERR.puts "String expected to be sent to STDERR"
  end

  desc "Time test"
  task :time_test, :delay do |t, args|
    delay = args[:delay] || 1
    sleep(delay.to_f)
  end

end

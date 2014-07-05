require "cucumber_rake_runner/version"
require "cucumber_rake_runner/io_capture"
require "cucumber_rake_runner/rake_runner"

require 'rake'
require 'ostruct'
require 'benchmark'

module CucumberRakeRunner

  def run_rake_task(task_name, *args)
    @stderr = IoCapture.stderr do
      @stdout = IoCapture.stdout do
        @time = Benchmark.realtime do
          RakeRunner.invoke(task_name,*args)
        end
      end
    end
    OpenStruct.new( time: @time, stdout: @stdout, stderr: @stderr)
  end

end

World(CucumberRakeRunner)

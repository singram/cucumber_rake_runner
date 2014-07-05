class RakeRunner

  def self.invoke(task_name, *args)
    RakeRunner.rake_application[task_name].invoke(*args)
    RakeRunner.rake_application[task_name].reenable
  end

  def self.rake_application
    @rake_application ||= Rake.application.tap do |app|
      ARGV.clear # Necessary to remove command line parameters built
      # into jruby which are then parsed by the setup of the Rake
      # application object
      app.handle_options
      app.load_rakefile
    end
  end

end

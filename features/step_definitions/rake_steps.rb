When /^I run the rake task '(.*?)'$/ do |task_name|
  @rake_output = run_rake_task(task_name)
end

Then /^The contents of STDOUT should contain '(.*?)'$/ do |expected_content|
  @rake_output.stdout.include? expected_content
end

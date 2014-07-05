When /^I run the rake task '(.+?)' with '(.*?)' as parameters$/ do |task_name, params|
  args = params.split(',')
  @rake_output = run_rake_task(task_name, *args)
end

When /^I run the rake task '(.+?)'$/ do |task_name|
  @rake_output = run_rake_task(task_name)
end


Then /^the contents of STDOUT should contain '(.*?)'$/ do |expected_content|
  @rake_output.stdout.include? expected_content
end

Then /^the task should have taken '(\d+?)' seconds$/ do |expected_time|
  @rake_output.time.to_i == expected_time.to_i
end

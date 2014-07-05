Feature:
  As a tester of rake tasks
  I want to execute rake tasks inline to the current process
  And to capture properties about the rake task to test against

Scenario: Testing the capture of STDOUT
  When I run the rake task 'cucumber_rake_runner:stdout_test'
  Then the contents of STDOUT should contain 'String expected to be sent to STDOUT'

Scenario: Testing the capture of timing with default duration of 1 second
  When I run the rake task 'cucumber_rake_runner:time_test'
  Then the task should have taken '1' seconds

Scenario: Testing the capture of timing with non default duration (2 seconds)
  When I run the rake task 'cucumber_rake_runner:time_test' with '2' as parameters
  Then the task should have taken '2' seconds

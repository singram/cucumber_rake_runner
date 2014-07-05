Feature:
  As a tester of rake tasks
  I want to execte rake tasks inline to the current process
  And to capture properties about the rake task to test against

Scenario: Testing the capture of STDOUT
  When I run the rake task 'cucumber_rake_runner:stdout_test'
  Then The contents of STDOUT should contain 'String expected to be sent to STDOUT'

Describe the problem:
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

Design the method signature:
```ruby
includes_todo = task_tracker(text)

text is a string of multiple words
includes_todo is a boolean value (true/false)


```

Create examples as tests:

task_tracker(nil) throws an error
task_tracker("#TODO walk the dog") => true
task_tracker("#TODO: walk the dog") => true
task_tracker("#TODO, #TODO") => true
task_tracker("walk the dog") => false
task_tracker("walk the dog #TODO") => true
task_tracker("#todo walk the dog") => true

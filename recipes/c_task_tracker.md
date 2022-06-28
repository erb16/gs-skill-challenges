1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

```Ruby
class TaskTracker
def initializer
@todotasks #todotasks is an array of strings
end

def add_task(task) #task is a string
#adds task to todo list
#returns updated todo list
return @todotasks
end

def mark_complete(task) #task is a string
#removes task from instance variable
#returns updated todo list
return @todotasks
end

def list
return @todotasks #see list of tasks
end

```

3. Create Examples as Tests

#1 
task_tracker = TaskTracker.new
task_tracker.list # => []

#2
task_tracker = TaskTracker.new
task_tracker.add_task("drink coffee") # => ["drink coffee"]

#3
task_tracker = TaskTracker.new
task_tracker.add_task("drink coffee, watch tv") # => ["drink coffee", "watch tv"]

#4
task_tracker = TaskTracker.new
task_tracker.add_task("drink coffee and watch tv") # => ["drink coffee", "watch tv"]

#5
task_tracker = TaskTracker.new
task_tracker.add_task("drink coffee") 
task_tracker.add_task("watch tv") # => ["drink coffee", "watch tv"]

#6
task_tracker = TaskTracker.new
task_tracker.add_task("drink coffee, watch tv")
task_tracker.mark_complete("drink coffee") # => ["watch tv"]
Describe the problem:

As a user

So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

<!-- 2. Design the Method Signature
The signature of a method includes:

The name of the method.
What parameters it takes, their names and data types.
What it returns and the data type of that value.
Any other side effects it might have.
Steps 3 and 4 then operate as a cycle. -->

```ruby
time_manager = readingtime(text) 

text is a string, containing words 
time_manager is an estimate of reading time for text

```

Create Examples as Tests
```ruby
# 1
calculate_reading_time("")
# => 0

# 2
calculate_reading_time("one")
# => 1

# 3
calculate_reading_time(two_hundred_words)
# => 1

# 4
calculate_reading_time(three_hundred_words)
# => 2

# 5
calculate_reading_time(four_hundred_words)
# => 2

# 6
calculate_reading_time(five_thousand_words)
# => 25
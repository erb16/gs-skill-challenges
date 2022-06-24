Describe the problem:

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.



Design the method signature:
```ruby
good_grammar? = grammar_checker(text)

text = a string of many words
good_grammar? = boolean (true/false)

```

Create examples as tests:

grammar_checker("Hello, there.") => true
grammar_checker("Hello, there!") => true
grammar_checker("Hello, there?") => true
grammar_checker("Hello, there") => false
grammar_checker("hello, there.") => false
grammar_checker("hello, there") => false
grammar_checker("Hello, there,") => false
grammar_checker("hello, there!") => false
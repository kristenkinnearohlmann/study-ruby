# Snippets for Ruby

## gems
Gems are libraries in Ruby.

## Symbol data type
1. Starts with a colon
1. Used for storing data
1. Unique to Ruby

## Explanation of creating tests
[https://learn.co/tracks/full-stack-web-development-v8/module-3-intro-to-ruby-development/section-4-methods/video-intro-to-tests](https://learn.co/tracks/full-stack-web-development-v8/module-3-intro-to-ruby-development/section-4-methods/video-intro-to-tests)

### rspec conventions
1. Need to require the file './filename.rb'
1. describe block is name of file being tested with a do/end block
1. it block describes the specific test with do/end block
1. call method and store return value to local variable to be used in an expect() call
1. Add in .rspec --format documentation to print out all information in tests
1. Can define new colors in spec_helper.rb to change pass/fail colors

## Arrays
%w() can create string arrays but putting single words, no double quotes, spaces instead of commas to create one
```Ruby
cats = %w(Mario Rucola)
```
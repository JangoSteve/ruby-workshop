# Ruby Workshop Programs

This repo contains the Ruby programs we built as part of the [Ruby
Programming
Workshop](http://grandcircus.co/workshops/ruby-programming) hosted by [Grand Circus](http://grandcircus.co/) and taught by Steve Schwartz of [Alfa
Jango](http://www.alfajango.com).

The accompanying outline slides can be found here: [Day 1](http://ruby-workshop.alfajango.com) and [Day 2](http://ruby-workshop.alfajango.com/day2.html).

## Background

All programs were built using Ruby 2.0, so make sure that is installed
and being used when running these projects. If you haven't already, you
may consider [installing RVM](https://rvm.io/rvm/install) to ease the
process of installing and using Ruby 2.0. Once RVM is installed and set
up, [install Ruby 2.0](https://rvm.io/rubies/installing).

## Running Programs

After you've cloned this repository to your computer, open your Terminal
app and change directories to the cloned respository and then install
the required gems.

```
git clone https://github.com/JangoSteve/ruby-workshop.git
cd ruby-workshop
bundle install
```

Then, follow the "Run" instructions for each program.

## Programs

### Counter

The first app we built can be found in the `counter` directory.

This program shows us how to do a basic counting loop in Ruby which
sleeps and outputs text. It also shows us how to divide simple Ruby scripts into separate
classes, and how to put separate classes into separate files, and then
load them by running a single "run" script.

To run the program:

```
cd counter
ruby run.rb
```

### Chess Timer

This app uses some more advanced Ruby techniques, including creating
instance methods for classes, using Ruby's `initialize` method which
gets run when instantiating new objects (using `.new`), using global
instance variables (using `@` variable names), and using the
`attr_accessor` class method to easily create efficient getters and
setters in Ruby classes.

This program also teaches us more advanced topics, such as using Ruby in
an asynchronous fashion by creating multiple parallel Ruby Threads,
also listening for and trapping user input, and gracefully rescuing
Exceptions.

To run:

```
cd chess_timer
ruby chess_timer.rb
```

This program will run indefinitely. To switch the active timer between
player 1 and player 2, press `s` and hit `enter`.

To stop the program, press `^c` (ctrl and c).

We later came back to this program and showed how to use RSpec to start
building unit tests. To run the tests:

```
rspec chess_timer_spec.rb
```

### Rack App

This program showed us how to hook Ruby code up to the web by using
Ruby's most basic web library, called Rack.

To run:

```
cd rack_app
ruby server.rb
```

Now open your browser and visit
[localhost:9292](http://localhost:9292).

### Sinatra App

This program showed us how to use a more advanced Rubygem to quickly
and easily build small websites and web applications with Sinatra.
In using Sinatra, this program also showed us the concept of using
DSLs provided by other Ruby programs or gems.

To run:

```
cd sinatra_app
ruby my_sinatra.rb
```

Now open your browser and visit
[localhost:4567](http://localhost:4567k).

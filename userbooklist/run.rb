require_relative "book.rb"
require_relative "user.rb"
require "pry"



steven=User.new("Steven","China")
jack=User.new("Jack","USA")

kiterunner=Book.new("Kiterunner",1990)
perfect=Book.new("Perfect",2018)

kiterunner.read_by_user(steven)
perfect.read_by_user(jack)

binding.pry
true

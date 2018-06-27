require_relative "userbook.rb"
require "pry"

class Book
attr_accessor :name,:year

@@all=[]

def initialize(name,year)
  @name = name
  @year=year
  @@all << self
end

def self.all
  @@all
end

def read_by_user(user)
  Userbook.new(user,self)
end

def userbooks
  Userbook.all.select do |userbook|
  userbook.book == self
end
end

def user
  userbooks.map do |userbook|
    userbook.user
  end
end
end

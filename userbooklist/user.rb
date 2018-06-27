
class User

attr_accessor :name,:place
@@all=[]

def initialize(name,place)
  @name = name
  @place=place
  @@all << self
end


def self.all
@@all
end

def userbooks
  Userbook.all.select do |userbook|
    userbook.user == self
  end
end

def book
userbooks.map do |userbook|
  userbook.book
end
end
end

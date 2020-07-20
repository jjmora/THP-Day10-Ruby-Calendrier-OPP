require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = []
  @@counter = 0

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users[@@counter] = [@email,@age]
    @@counter =+ 1
  end

  def self.counter
    return @@counter
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email)
    searched_user = ""
    (0...@@all_users.size).each do |x|
      if @@all_users[x][0] == email 
        searched_user = @@all_users[x]
      else
        searched_user = "User not find"
      end
    end
    return searched_user
  end
end

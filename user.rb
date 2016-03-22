module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize (name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey, I'm running"
  end

  def self.indentify_yourself
    puts "Hey, I'm a class method"
  end
  
end

class Buyer < User
  def run
    puts "I'm not running, but I am in Buyer class"
  end
end

class Seller < User
  
end

class Admin < User

end

user = User.new("Julio", "j@j.com")
user.name = "Janice"

buyer1 = Buyer.new("John Doe1", "johndoe1@example.com")
seller1 = Seller.new("John Doe2", "johndoe2@example.com")
admin1 = Admin.new("John Doe3", "johndoe3@example.com")

seller1.run
buyer1.run
admin1.run
puts Buyer.ancestors
User.indentify_yourself
user.destroy("Bitch");
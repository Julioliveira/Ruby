require 'pp'
require_relative 'user'

user = User.new 'kyle@example.com', 'Kyle'

pp user

user.save
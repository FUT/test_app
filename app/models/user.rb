class User < ActiveRecord::Base
  has_many :posts
  has_many :pictures, as: :owner

  def hello
    puts 'asdfasdfasdf'
  end
end

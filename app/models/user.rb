require 'bcrypt'

class User < ActiveRecord::Base
<<<<<<< HEAD
  # Remember to create a migration!
  has_many :user_surveys
  has_many :surveys, :through => :user_surveys
=======
 # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


>>>>>>> f5d99f95c9a87b4bb52a9a407cf7fee0dfd8130c
end

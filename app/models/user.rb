require 'bcrypt'

class User < ActiveRecord::Base

  has_many :authored_surveys, class_name: 'Survey'
  # has_many :surveys, :through => :user_surveys


 # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end

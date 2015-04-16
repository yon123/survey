class Survey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :questions
  # has_many :user_surveys
  # has_many :users, :through => :user_surveys
  # has_many :questions

  validates :user_id, presence: true
end

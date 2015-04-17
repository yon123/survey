class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  has_one :survey, through: :question

  # validates :question_id, presence: true
end

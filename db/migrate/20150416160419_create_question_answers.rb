class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.belongs_to :answer

      t.timestamps
    end
  end
end

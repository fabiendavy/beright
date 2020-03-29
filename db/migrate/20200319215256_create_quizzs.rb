class CreateQuizzs < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzs do |t|
      t.string :category
      t.string :question_type
      t.string :difficulty
      t.string :question
      t.string :correct_answer
      t.string :incorrect_answer_1
      t.string :incorrect_answer_2
      t.string :incorrect_answer_3

      t.timestamps
    end
  end
end

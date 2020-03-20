class Quizz < ApplicationRecord
  belongs_to :game

  validates :category, :question_type, :difficulty, :question, :correct_answer, :incorrect_answer_1, :incorrect_answer_2, :incorrect_answer_3, presence: true
end


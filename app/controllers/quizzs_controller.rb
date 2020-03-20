class QuizzsController < ApplicationController
  def new
    @quizz = Quizz.new
  end
end

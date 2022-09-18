class QuestionsController < ApplicationController
  def index
    @question = Question.all
  end

  def create
    @questions = Question.new
    if @questions.save
      redirect_to root_path
    end

  end
end

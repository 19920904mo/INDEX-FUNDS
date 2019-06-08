class AnswersController < ApplicationController
  def index
   @questions = Question.all.page(params[:page]).per(5)
  end
  
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
  end
   
  def create
    @answer = Answer.create(create_params)
  end

  def show
    @question = Question.find(params[:question_id])
    @answers = @question.answers
  end
  
  private
  def create_params
    params.require(:answer).permit(:question_id, :detail)
  end
end


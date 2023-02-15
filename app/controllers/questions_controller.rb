QUESTION_WORK = 'I am going to work'
ANSWER_WORK = 'Great!'
ANSWER_QUESTION = 'Silly question, get dressed and go to work!'
ANSWER_ELSE = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(str)
    if question?(str)
      ANSWER_QUESTION
    elsif str == QUESTION_WORK
      ANSWER_WORK
    else
      ANSWER_ELSE
    end
  end

  def question?(str)
    str.nil? ? false : str.end_with?('?')
  end
end

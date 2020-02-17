class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # Params come from:
    # url query string --> ?question=hello
    # path variables   --> /restaurants/:id -> /restaurants/13 -> { id: 13 }
    # body of request  --> forms (more on this tomorrow)

    # /answer?question=hello
    # params => { question: "hello" }
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # render questions/answer.html
  end
end

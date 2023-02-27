class QuestionsController < ApplicationController

  def ask
    # must diply the ask -view file. ie goes tto the view file named ask and does what ever is in the file ie display HMTL on broswer.

  end

  def answer
    @question = params[:question]

    @answer = if @question == "I am going to work"
                "Great!"
              elsif @question.include? "?"
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end
  end

end

# The controller will need to read the question from
# params and compute an instance variable @answer for the view to display

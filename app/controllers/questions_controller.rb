class QuestionsController < ApplicationController
  def ask
    @ask
  end

  def answer
    @answer = if params[:answer] == 'I am going to work'
              'Good Job'
              elsif params[:answer].include?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end

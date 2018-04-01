class QuestionsController < ApplicationController
    
    before_action :logged_in_user
    
    def question_params
        params.require(:questionbank).permit(:category, :question, :option1, :option2, :option3, :option4, :option5, :answer)
    end
    
    def addquestion
        @question = QuestionBank.create!(question_params)
        flash[:notice] = "Question was successfully added."
    end
    
    def movie_params
        params.require(:movie).permit(:title, :rating, :description, :release_date)
    end
end

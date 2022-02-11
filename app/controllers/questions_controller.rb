class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token # TODO убрать

  def create
    Question.create(
      body: params[:question][:body],
      user_id: params[:question][:user_id]
    )
  end
end

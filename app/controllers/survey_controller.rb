class SurveyController < ApplicationController
  def index
    @survey = Survey.all
  end

  def take
  @survey = Survey.find(params[:id])
  @question = SurveyQuestion.where(survey_id: params[:survey_id]) rescue nil

  end


end

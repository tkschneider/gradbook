class SurveyAdminController < ApplicationController
  def index
    @survey = Survey.all
  end
  def add

  end


  def new
  end
  def edit
      @survey = Survey.find(params[:id])
      @question = SurveyQuestion.find(params[:survey_id]) rescue nil


    end


  def create
    # render plain: params[:survey].inspect

    @survey = Survey.new(survey_params)


    @survey.save

    redirect_to action: 'index'

  end

  private

  def survey_params
    params.require(:survey).permit(:survey_name, :login_id,
    :survey_description , :status, :date_created, :status,
    :created_at, :updated_at)



  end




end

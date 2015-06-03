class SurveyAdminController < ApplicationController
  def index
    @survey = Survey.all rescue nil
  end
  def add

  end

  def new_q
    @survey = Survey.find(params[:id]) rescue nil
    @count = :display_order
  end


  def new
  end
  def edit
      @survey = Survey.find(params[:id]) rescue nil
      @question = SurveyQuestion.where(survey_id: params[:survey_id]) rescue nil


    end


    def publish
  survey = Survey.find(params[:id]) rescue nil
  survey.update_attributes(status: 'published')
  redirect_to(survey_admin_index_path)

end



  def create
    # render plain: params[:survey].inspect

    @survey = Survey.new(survey_params) rescue nil
    @survey.save rescue nil
    redirect_to action: 'index'

    @question = SurveyQuestion.new(question_params) rescue nil
    @question.save rescue nil




  end

  private

  def survey_params
    params.require(:survey).permit(:survey_name, :login_id,
    :survey_description , :status, :date_created, :status,
    :created_at, :updated_at)

  end

  def question_params
    params.require(:survey_question).permit(:survey_id, :type,
    :display_order, :text, :required)
  end





end

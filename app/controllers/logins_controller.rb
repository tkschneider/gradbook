class LoginsController < ApplicationController
    def index
        @login = Login.all
        end

    def show
        @login = Login.find(params[:id])
        end

    def new
        end

    def edit
        @login = Login.find(params[:id])
        end

    def create
        @login = Login.new(login_params)

        if @login.save
            flash[:success] = "Login created"
          redirect_to :action => 'index'
        else
            flash[:alert] = "Login NOT created"
        end
    end

    def update
      @login = Login.find(params[:id])

      if @login.update(login_params)
         flash[:success] = "Login updated"
          redirect_to :action => 'index'
      else
        flash[:alert] = "Login NOT created"
      end
    end

    def destroy
      @login = Login.find(params[:id])

      if @login.destroy
          flash[:success] = "Login deleted"
          redirect_to :action => 'index'
      else
        flash[:alert] = "Login NOT deleted"
      end
  end

    private
    def login_params
        params.require(:login).permit(:First_name, :mi, :Last_name, :User_name, :Password, :Type)
    end

end

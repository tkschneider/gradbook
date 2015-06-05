class LoginsController < ApplicationController
    def index
        @login = Login.all
        end

    def show
        @login = Login.find(params[:id])
        if User.exists?(params[:id])
            @user = User.find(params[:id])
            end
        end

    def new
        end

    def edit
        @login = Login.find(params[:id])
        if User.exists?(params[:id])
            @user = User.find(params[:id])
        end
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
          redirect_to :action => 'show'
      else
        flash[:alert] = "Login NOT updated"
      end
    end

    def destroy
      
      
        if User.exists?(params[:id])
            @user = User.find(params[:id])
            @user.destroy
        end
        
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
        params.require(:login).permit(:first_name, :middle_initial, :last_name, :username, :password, :type, :created_at, :updated_at, :last_sign_in_at, :email, :password_confirmation  )
    end
end

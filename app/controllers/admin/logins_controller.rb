class Admin::LoginsController < AdminController
    #Brad Bilter

    #Helper methods for sorting
    helper_method :sort_column, :sort_direction

    #index LOGINS but add order by to select for sorting
    def index
        @login = Login.order(sort_column + " " + sort_direction)
    end

    #Show users by ID selected
    def show
        @login = Login.find(params[:id])
        #Make sure USER exists for LOGIN otherwise don't create object
        if User.exists?(params[:id])
            @user = User.find(params[:id])
        end
    end

    def new
    end

    #Selects existing user by selected ID to display
    def edit
        @login = Login.find(params[:id])
        #Make sure USER exists for LOGIN otherwise don't create object
        if User.exists?(params[:id])
            @user = User.find(params[:id])
        end
    end

    #Create new user with params hash
    def create
            @login = Login.new(login_params)
        #Test for save successful and react
        if @login.save
            flash[:success] = "Login created"
          redirect_to :action => 'index'
        else
            flash[:alert] = "Login NOT created"
            redirect_to :action => 'index'
        end
    end

    #Updates selected user received on submit from edit
    def update
      @login = Login.find(params[:id])

        #Test for save successful and react
        if @login.update(login_params)
            flash[:success] = "Login updated"
            redirect_to(:action => 'index')
        else
            flash[:alert] = "Login NOT updated"
            redirect_to(:action => 'update')
        end
    end

    #Delete records
    def destroy
        #Foreign key in user requires a delete of the user first if exists
        if User.exists?(params[:id])
            @user = User.find(params[:id])
            @user.destroy
        end

        #Test for delete successful and react
        @login = Login.find(params[:id])
        if @login.destroy
            flash[:success] = "Login deleted"
            redirect_to :action => 'index'
        else
            flash[:alert] = "Login NOT deleted"
        end
    end

    #Private methods
    private

    #Define login params to prevent sql injection
    #Active record has a permit only implementation
    #that means you must explicitly specify records
    #to be added
    def login_params
        params.require(:login).permit(:first_name, :middle_initial, :last_name, :username, :password, :type, :created_at, :updated_at, :last_sign_in_at, :email, :password_confirmation  )
    end

    #sort column method that prevents sql injection
    #by only allowing sort columns to be received
    #from column headers ***railscast episode 228
    def sort_column
        Login.column_names.include?(params[:sort]) ? params[:sort] : "last_name"
    end

    #sort direction method that prevents sql
    #injection by only allowing asc or desc
    #options to be passed for sort direction.
    #***railscast episode 228
    def sort_direction
        %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end

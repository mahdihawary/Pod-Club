class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:new, :create, :login, :handle_login, :homepage]
    
    def show
    end

    def new
        @user = User.new
    end

    def edit
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid? 
            session[:user] = @user.id
            flash[:message] = "Welcome to Pod Club! You've successfully created your profile."
            redirect_to user_path(@user)
        else
            flash[:message] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user.destroy
        flash[:message] = "You've deleted your account. We hope to see you again soon."
        redirect_to "/login"
    end

    def homepage
    end

    def login
    end

    def handle_login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user] = @user.id
            redirect_to user_path(@user)
        else
            flash[:message] = "Incorrect Username or Password"
            redirect_to login_path
        end
    end

    def logout
        session[:user] = nil
        flash[:message] = "You have successfully logged out"
        redirect_to login_path
    end


    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :password, :name, :age, :favorite_genre, :profile_pic, :password_confirmation)
    end

end

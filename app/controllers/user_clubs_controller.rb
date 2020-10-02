class UserClubsController < ApplicationController
    before_action :find_user_club, only: [:destroy]

    def create
        
        @user_club = UserClub.create(user_club_params)
        if @user_club.valid? 
            flash[:success] = "You've joined a Pod Club!"
            redirect_to club_path(@user_club.club)
            #club_path(@user_club.club)
        else
            flash[:my_errors] = @user_club.errors.full_messages
            redirect_to :back
        end
    end

    def destroy
        @user_club.destroy
        flash[:success] = "You've successfully left the Pod Club. We're sad to see you go!"
        redirect_to user_path(@current_user)
    end 

    private 
    def find_user_club
        @user_club = UserClub.find(params[:id])
    end

    def user_club_params
        params.require(:user_club).permit(:user_id, :club_id)
    end
end

class ClubsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    
    before_action :find_club, only: [:show, :edit, :update]

    def index
        @clubs = Club.all
    end
    
    def show
    end

    def new
        @club = Club.new
    end

    def edit
    end
    
    def create
        @club = Club.create(club_params)
        if @club.valid? 
            flash[:message] = "Congrats, you created a Pod Club!"
            redirect_to club_path(@club)
        else
            flash[:message] = @club.errors.full_messages
            redirect_to new_club_path
        end
    end

    def update
        @club.update(club_params)
        redirect_to club_path(@club)
    end

    private

    def find_club
        @club = Club.find(params[:id])
    end

    def club_params
        params.require(:club).permit(:name, :genre, :club_image)
    end

end

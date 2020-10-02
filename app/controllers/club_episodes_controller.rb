class ClubEpisodesController < ApplicationController
    before_action :find_club_episode, only: [:show, :edit, :update, :destroy]

    def index
        @club_episodes = ClubEpisode.all
    end
    
    def show
    end

    def new
        @club_episode = ClubEpisode.new
    end

    def edit
    end
    
    def create
        @club_episode = ClubEpisode.create(club_episode_params)
        if @club_episode.valid? 
            flash[:message] = "Episode added!"
            redirect_to club_path(@club_episode.club)
        else
            flash[:message] = "This episode has already been added to this club"
            redirect_to new_club_episode_path
        end
    end

    def update
        @club_episode.update(club_episode_params)
        redirect_to club_path(@club)
    end

    def destroy
        @club_episode.destroy
        flash[:message] = "You've deleted the episode"
        redirect_to new_club_episode_path
    end

    private

    def find_club_episode
        @club_episode = club_episode.find(params[:id])
    end

    def club_episode_params
        params.require(:club_episode).permit(:club_id, :episode_id)
    end

end

class EpisodesController < ApplicationController
    before_action :find_episode, only: [:show, :destroy]

    def show
         @comment = Comment.new
    end 

    def new
        @episode = Episode.new
    end

    def create
        @episode = Episode.create(episode_params)
        if @episode.valid? 
            flash[:message] = "You've created a new episode!"
            redirect_to episode_path(@episode)
        else
            flash[:message] = @episode.errors.full_messages
            redirect_to new_episode_path
        end
    end

    def destroy
        @episode.destroy
        flash[:message] = "You've deleted the episode."
        redirect_to clubs_path
    end

    

    private

    def find_episode
        @episode = Episode.find(params[:id])
    end

    def episode_params
        params.require(:episode).permit(:name, :episode_number, :episode_title, :description, :date, :episode_url)
    end

end

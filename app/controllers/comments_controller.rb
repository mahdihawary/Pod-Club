class CommentsController < ApplicationController
    
    before_action :load_episode
    def create
        @comment = @episode.comments.build(comment_params)
        @comment.user_id = @current_user.id
        if @comment.save
            redirect_to @episode, notice: "Added comment."
        else
            render :new
        end
    end

    def destroy
        @user = @current_user
        @episode = @user.episodes.find(params[:episode_id])
        @comment = @user.comments.find(params[:id])
        @comment.destroy
        redirect_to episode_path(@episode)
    end


    private

    def load_episode
        @episode = Episode.find(params[:episode_id])
    end

    def comment_params
    params.require(:comment).permit(:text, :user_id, :episode_id)
  end
end

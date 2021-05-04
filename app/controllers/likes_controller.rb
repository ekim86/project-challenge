class LikesController < ApplicationController
  # before_action :dog_params

  # def new
  #   @like = Like.new

  #   render 'dogs/likes/new'
  # end

  def create
    @dog.likes.create(user_id: current_user.id)
    redirect_to dog_path(@dog)
  end

  private

    def dog_params
      @dog = params.require(:like).permit(:user_id, :dog_id)
    end

end

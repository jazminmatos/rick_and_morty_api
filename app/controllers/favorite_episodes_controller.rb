class FavoriteEpisodesController < ApplicationController
  before_action :set_favorite_episode, only: [:show, :update, :destroy]

  # GET /favorite_episodes
  def index
    @favorite_episodes = FavoriteEpisode.all

    render json: @favorite_episodes
  end

  # GET /favorite_episodes/1
  def show
    render json: @favorite_episode
  end

  # POST /favorite_episodes
  def create
    @favorite_episode = FavoriteEpisode.new(favorite_episode_params)

    if @favorite_episode.save
      render json: @favorite_episode, status: :created, location: @favorite_episode
    else
      render json: @favorite_episode.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_episodes/1
  def update
    if @favorite_episode.update(favorite_episode_params)
      render json: @favorite_episode
    else
      render json: @favorite_episode.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_episodes/1
  def destroy
    @favorite_episode.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_episode
      @favorite_episode = FavoriteEpisode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_episode_params
      params.require(:favorite_episode).permit(:id, :name, :air_date, :episode, {:characters => []}, :url)
    end
end

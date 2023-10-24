class ChannelsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all_except(current_user)
    @channels = Channel.all
    @channel = Channel.new
  end

  def show; end

  def create
    @channel = Channel.new(channel_params)
    @channel.save
  end

  private

  def channel_params
    params.require(:channel).permit(:name)
  end
end

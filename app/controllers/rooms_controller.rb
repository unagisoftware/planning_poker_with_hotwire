class RoomsController < ApplicationController
  before_action :set_room

  def show; end

  def reset
    @room.members.update_all estimation: nil
  end

  def reveal; end

  private

  def set_room
    @room = Room.find_by(slug: params[:id])
  end
end

class SessionsController < ApplicationController
  def logout
    room = current_member.room

    Turbo::StreamsChannel.broadcast_remove_to(
      current_member.room,
      target: current_member
    )

    current_member.destroy
    session.clear

    redirect_to room
  end
end

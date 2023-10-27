class EstimationsController < ApplicationController
  def create
    current_member.update(estimation: params[:estimation])

    Turbo::StreamsChannel.broadcast_replace_to(
      current_member.room,
      target: current_member,
      partial: 'members/member',
      locals: { member: current_member }
    )

    render partial: 'rooms/estimation'
  end
end

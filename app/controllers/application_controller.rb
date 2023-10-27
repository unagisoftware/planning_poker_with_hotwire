class ApplicationController < ActionController::Base
  include ActionView::RecordIdentifier

  def current_member
    return if session[:member_id].blank?

    @current_member ||= Member.find(session[:member_id])
  end
  helper_method :current_member
end

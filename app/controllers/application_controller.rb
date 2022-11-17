# frozen_string_literal: true

class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end
  def admin_access
    render(text: 'Unauthorized.') and return unless current_user.admin
  end
end

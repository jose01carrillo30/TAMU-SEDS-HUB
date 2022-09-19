class ApplicationController < ActionController::Base
    def admin_access
        render(text: 'Unauthorized.') and return unless current_user.admin
    end
end
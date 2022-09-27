# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  def google_oauth2
    # user = User.from_omniauth(auth)
    user = User.from_google(      uid: auth.uid,
    email: auth.info.email,
    first_name: auth.info.first_name,
    last_name: auth.info.last_name,
    avatar_url: auth.info.image)

    if user.present?
      sign_out_all_scopes
      flash[:success] = t 'devise.omniauth_callbacks.success', kind: 'Google'
      p auth.info
      p "Your name is"
      p auth.info.first_name
      p auth.info.last_name
      sign_in_and_redirect user, event: :authentication
    else 
      flash[:alert] = t 'devise.omniauth_callbacks.failure', kind: 'Google', reason: "#{auth.info.email} is not authorized."
      redirect_to new_user_session_path
    end
  end
  
  protected

  def after_omniauth_failure_path_for(_scope)
    new_user_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    # Detect if this is an incomplete (and therefore new) profile
    # TODO: remove some of these checks if we decide particular fields such as major are optional
    if current_user.pronouns.nil? or current_user.classification.nil? or current_user.major.nil? or current_user.phone_number.nil?
      return edit_user_path(current_user)
    end
    return stored_location_for(resource_or_scope) || root_path
  end

  private

  def from_google_params
    @from_google_params ||= {
      uid: auth.uid,
      email: auth.info.email,
      first_name: auth.info.first_name,
      last_name: auth.info.last_name,
      avatar_url: auth.info.image
    }
  end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end

  def auth
    @auth ||= request.env['omniauth.auth']
  end
end

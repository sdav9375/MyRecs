class PublicController < ApplicationController

  def index
    @user_profiles = UserProfile.all
  end

end

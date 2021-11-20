class UserProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_user_profile, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /user_profiles
  def index
    @user_profiles = UserProfile.all
  end

  # GET /user_profiles/1
  def show
    @recs = User.find(params[:id]).recs
  end

  # GET /user_profiles/new
  def new
    @user_profile = UserProfile.new
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles
  def create
    @user_profile = UserProfile.new(user_profile_params)

    if @user_profile.save
      redirect_to @user_profile, notice: 'User profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_profiles/1
  def update
    if @user_profile.update(user_profile_params)
      redirect_to @user_profile, notice: 'User profile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_profiles/1
  def destroy
    @user_profile.destroy
    redirect_to user_profiles_url, notice: 'User profile was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profile
      @user_profile = User.find(params[:id]).user_profile
    end

    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # def user_profile_params
    #   params.require(:user_profile).permit(:name, :user_id)
    # end
end

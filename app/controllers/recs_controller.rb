class RecsController < ApplicationController
  before_action :set_rec, only: [:show, :edit, :update, :destroy]

  # GET /recs
  def index
    @recs = Rec.all
  end

  # GET /recs/1
  def show
  end

  # GET /recs/new
  def new
    @rec = Rec.new
  end

  # GET /recs/1/edit
  def edit
  end

  # POST /recs
  def create
    @rec = Rec.new(rec_params)

    if @rec.save
      redirect_to @rec, notice: 'Rec was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /recs/1
  def update
    if @rec.update(rec_params)
      redirect_to @rec, notice: 'Rec was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /recs/1
  def destroy
    @rec.destroy
    redirect_to recs_url, notice: 'Rec was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rec
      @rec = Rec.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rec_params
      params.require(:rec).permit(:title, :link, :description, :user_profile_id)
    end
end

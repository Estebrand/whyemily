class EmiliesController < ApplicationController
  before_action :set_emily, only: [:show, :edit, :update, :destroy]

  # GET /emilies
  # GET /emilies.json
  def index
    @emilies = Emily.all
  end

  # GET /emilies/1
  # GET /emilies/1.json
  def show
  end

  # GET /emilies/new
  def new
    @emily = Emily.new
  end

  # GET /emilies/1/edit
  def edit
  end

  def showcase
    @emilies = Emily.all

    @carousel = []

      @emilies.shuffle.each do |emily|
        @carousel.push(emily.name)
      end
  end

  # POST /emilies
  # POST /emilies.json
  def create
    @emily = Emily.new(emily_params)

    respond_to do |format|
      if @emily.save
        format.html { redirect_to @emily, notice: 'Emily was successfully created.' }
        format.json { render :show, status: :created, location: @emily }
      else
        format.html { render :new }
        format.json { render json: @emily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emilies/1
  # PATCH/PUT /emilies/1.json
  def update
    respond_to do |format|
      if @emily.update(emily_params)
        format.html { redirect_to @emily, notice: 'Emily was successfully updated.' }
        format.json { render :show, status: :ok, location: @emily }
      else
        format.html { render :edit }
        format.json { render json: @emily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emilies/1
  # DELETE /emilies/1.json
  def destroy
    @emily.destroy
    respond_to do |format|
      format.html { redirect_to emilies_url, notice: 'Emily was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emily
      @emily = Emily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emily_params
      params.require(:emily).permit(:name, :dsc)
    end
end

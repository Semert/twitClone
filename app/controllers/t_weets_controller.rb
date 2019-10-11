class TWeetsController < ApplicationController
  before_action :set_t_weet, only: [:show, :edit, :update, :destroy]

  # GET /t_weets
  # GET /t_weets.json
  def index
    @t_weets = TWeet.all
  end

  # GET /t_weets/1
  # GET /t_weets/1.json
  def show
  end

  # GET /t_weets/new
  def new
    @t_weet = TWeet.new
  end

  # GET /t_weets/1/edit
  def edit
  end

  # POST /t_weets
  # POST /t_weets.json
  def create
    @t_weet = TWeet.new(t_weet_params)

    respond_to do |format|
      if @t_weet.save
        format.html { redirect_to @t_weet, notice: 'T weet was successfully created.' }
        format.json { render :show, status: :created, location: @t_weet }
      else
        format.html { render :new }
        format.json { render json: @t_weet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_weets/1
  # PATCH/PUT /t_weets/1.json
  def update
    respond_to do |format|
      if @t_weet.update(t_weet_params)
        format.html { redirect_to @t_weet, notice: 'T weet was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_weet }
      else
        format.html { render :edit }
        format.json { render json: @t_weet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_weets/1
  # DELETE /t_weets/1.json
  def destroy
    @t_weet.destroy
    respond_to do |format|
      format.html { redirect_to t_weets_url, notice: 'T weet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_weet
      @t_weet = TWeet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_weet_params
      params.require(:t_weet).permit(:Tweet)
    end
end

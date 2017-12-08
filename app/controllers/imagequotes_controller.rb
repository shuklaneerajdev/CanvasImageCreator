class ImagequotesController < ApplicationController
  before_action :set_imagequote, only: [:show, :edit, :update, :destroy]

  # GET /imagequotes
  # GET /imagequotes.json
  def index
    @imagequotes = Imagequote.all
  end

  # GET /imagequotes/1
  # GET /imagequotes/1.json
  def show
  end

  # GET /imagequotes/new
  def new
    @imagequote = Imagequote.new
  end

  # GET /imagequotes/1/edit
  def edit
  end

  # POST /imagequotes
  # POST /imagequotes.json
  def create
    @imagequote = Imagequote.new(imagequote_params)

    respond_to do |format|
      if @imagequote.save
        format.html { redirect_to @imagequote, notice: 'Imagequote was successfully created.' }
        format.json { render :show, status: :created, location: @imagequote }
      else
        format.html { render :new }
        format.json { render json: @imagequote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagequotes/1
  # PATCH/PUT /imagequotes/1.json
  def update
    respond_to do |format|
      if @imagequote.update(imagequote_params)
        format.html { redirect_to @imagequote, notice: 'Imagequote was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagequote }
      else
        format.html { render :edit }
        format.json { render json: @imagequote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagequotes/1
  # DELETE /imagequotes/1.json
  def destroy
    @imagequote.destroy
    respond_to do |format|
      format.html { redirect_to imagequotes_url, notice: 'Imagequote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagequote
      @imagequote = Imagequote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagequote_params
      params.require(:imagequote).permit(:name, :value)
    end
end

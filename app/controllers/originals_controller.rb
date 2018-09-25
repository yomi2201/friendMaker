class OriginalsController < ApplicationController
  before_action :set_original, only: [:show, :edit, :update, :destroy]

  # GET /originals
  # GET /originals.json
  def index
    @originals = Original.all
  end

  # GET /originals/1
  # GET /originals/1.json
  def show
  end

  # GET /originals/new
  def new
    @original = Original.new
  end

  # GET /originals/1/edit
  def edit
  end

  # POST /originals
  # POST /originals.json
  def create
    @original = Original.new(original_params)

    respond_to do |format|
      if @original.save
        format.html { redirect_to @original, notice: 'Original was successfully created.' }
        format.json { render :show, status: :created, location: @original }
      else
        format.html { render :new }
        format.json { render json: @original.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /originals/1
  # PATCH/PUT /originals/1.json
  def update
    respond_to do |format|
      if @original.update(original_params)
        format.html { redirect_to @original, notice: 'Original was successfully updated.' }
        format.json { render :show, status: :ok, location: @original }
      else
        format.html { render :edit }
        format.json { render json: @original.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /originals/1
  # DELETE /originals/1.json
  def destroy
    @original.destroy
    respond_to do |format|
      format.html { redirect_to originals_url, notice: 'Original was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_original
      @original = Original.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def original_params
      params.require(:original).permit(:question_id, :question)
    end
end

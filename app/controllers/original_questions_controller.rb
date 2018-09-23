class OriginalQuestionsController < ApplicationController
  before_action :set_original_question, only: [:show, :edit, :update, :destroy]

  # GET /original_questions
  # GET /original_questions.json
  def index
    @original_questions = OriginalQuestion.all
  end

  # GET /original_questions/1
  # GET /original_questions/1.json
  def show
  end

  # GET /original_questions/new
  def new
    @original_question = OriginalQuestion.new
  end

  # GET /original_questions/1/edit
  def edit
  end

  # POST /original_questions
  # POST /original_questions.json
  def create
    @original_question = OriginalQuestion.new(original_question_params)

    respond_to do |format|
      if @original_question.save
        format.html { redirect_to @original_question, notice: 'Original question was successfully created.' }
        format.json { render :show, status: :created, location: @original_question }
      else
        format.html { render :new }
        format.json { render json: @original_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /original_questions/1
  # PATCH/PUT /original_questions/1.json
  def update
    respond_to do |format|
      if @original_question.update(original_question_params)
        format.html { redirect_to @original_question, notice: 'Original question was successfully updated.' }
        format.json { render :show, status: :ok, location: @original_question }
      else
        format.html { render :edit }
        format.json { render json: @original_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /original_questions/1
  # DELETE /original_questions/1.json
  def destroy
    @original_question.destroy
    respond_to do |format|
      format.html { redirect_to original_questions_url, notice: 'Original question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_original_question
      @original_question = OriginalQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def original_question_params
      params.require(:original_question).permit(:question_id, :original_question)
    end
end

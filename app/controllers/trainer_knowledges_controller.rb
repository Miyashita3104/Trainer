class TrainerKnowledgesController < ApplicationController
  before_action :set_trainer_knowledge, only: [:show, :edit, :update, :destroy]

  # GET /trainer_knowledges
  # GET /trainer_knowledges.json
  def index
    @trainer_knowledges = TrainerKnowledge.all
  end

  # GET /trainer_knowledges/1
  # GET /trainer_knowledges/1.json
  def show
  end

  # GET /trainer_knowledges/new
  def new
    @trainer_knowledge = TrainerKnowledge.new
  end

  # GET /trainer_knowledges/1/edit
  def edit
  end

  # POST /trainer_knowledges
  # POST /trainer_knowledges.json
  def create
    @trainer_knowledge = TrainerKnowledge.new(trainer_knowledge_params)

    respond_to do |format|
      if @trainer_knowledge.save
        format.html { redirect_to @trainer_knowledge, notice: 'Trainer knowledge was successfully created.' }
        format.json { render :show, status: :created, location: @trainer_knowledge }
      else
        format.html { render :new }
        format.json { render json: @trainer_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainer_knowledges/1
  # PATCH/PUT /trainer_knowledges/1.json
  def update
    respond_to do |format|
      if @trainer_knowledge.update(trainer_knowledge_params)
        format.html { redirect_to @trainer_knowledge, notice: 'Trainer knowledge was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainer_knowledge }
      else
        format.html { render :edit }
        format.json { render json: @trainer_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainer_knowledges/1
  # DELETE /trainer_knowledges/1.json
  def destroy
    @trainer_knowledge.destroy
    respond_to do |format|
      format.html { redirect_to trainer_knowledges_url, notice: 'Trainer knowledge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer_knowledge
      @trainer_knowledge = TrainerKnowledge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainer_knowledge_params
      params.require(:trainer_knowledge).permit(:title, :script)
    end
end

class ThousandsController < ApplicationController
  before_action :set_thousand, only: [:show, :edit, :update, :destroy, :down]

  # GET /thousands
  # GET /thousands.json
  def index
    @thousands = Thousand.all
  end

  # GET /thousands/1
  # GET /thousands/1.json
  def show
  end

  def down
    @thousand.down
    respond_to do |format|
      format.html { redirect_to @thousand, notice: 'Thousand was successfully down.' }
      format.json { render :show, status: :down, location: @thousand }
    end
  end

  # GET /thousands/new
  def new
    @thousand = Thousand.new
  end

  # GET /thousands/1/edit
  def edit
  end

  # POST /thousands
  # POST /thousands.json
  def create
    @thousand = Thousand.new(thousand_params)

    respond_to do |format|
      if @thousand.save
        format.html { redirect_to @thousand, notice: 'Thousand was successfully created.' }
        format.json { render :show, status: :created, location: @thousand }
      else
        format.html { render :new }
        format.json { render json: @thousand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thousands/1
  # PATCH/PUT /thousands/1.json
  def update
    respond_to do |format|
      if @thousand.update(thousand_params)
        format.html { redirect_to @thousand, notice: 'Thousand was successfully updated.' }
        format.json { render :show, status: :ok, location: @thousand }
      else
        format.html { render :edit }
        format.json { render json: @thousand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thousands/1
  # DELETE /thousands/1.json
  def destroy
    @thousand.destroy
    respond_to do |format|
      format.html { redirect_to thousands_url, notice: 'Thousand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thousand
      @thousand = Thousand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thousand_params
      params.require(:thousand).permit(:num)
    end
end

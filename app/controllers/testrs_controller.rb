class TestrsController < ApplicationController
  before_action :set_testr, only: [:show, :edit, :update, :destroy]

  # GET /testrs
  # GET /testrs.json
  def index
    @testrs = Testr.all
  end

  # GET /testrs/1
  # GET /testrs/1.json
  def show
  end

  # GET /testrs/new
  def new
    @testr = Testr.new
  end

  # GET /testrs/1/edit
  def edit
  end

  # POST /testrs
  # POST /testrs.json
  def create
    @testr = Testr.new(testr_params)

    respond_to do |format|
      if @testr.save
        format.html { redirect_to @testr, notice: 'Testr was successfully created.' }
        format.json { render :show, status: :created, location: @testr }
      else
        format.html { render :new }
        format.json { render json: @testr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testrs/1
  # PATCH/PUT /testrs/1.json
  def update
    respond_to do |format|
      if @testr.update(testr_params)
        format.html { redirect_to @testr, notice: 'Testr was successfully updated.' }
        format.json { render :show, status: :ok, location: @testr }
      else
        format.html { render :edit }
        format.json { render json: @testr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testrs/1
  # DELETE /testrs/1.json
  def destroy
    @testr.destroy
    respond_to do |format|
      format.html { redirect_to testrs_url, notice: 'Testr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testr
      @testr = Testr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testr_params
      params.require(:testr).permit(:name, :active)
    end
end

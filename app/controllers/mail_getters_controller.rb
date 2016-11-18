class MailGettersController < ApplicationController
  before_action :set_mail_getter, only: [:show, :edit, :update, :destroy]

  # GET /mail_getters
  # GET /mail_getters.json
  def index
    @mail_getters = MailGetter.all
  end

  # GET /mail_getters/1
  # GET /mail_getters/1.json
  def show
  end

  # GET /mail_getters/new
  def new
    @mail_getter = MailGetter.new
  end

  # GET /mail_getters/1/edit
  def edit
  end

  # POST /mail_getters
  # POST /mail_getters.json
  def create
    @mail_getter = MailGetter.new(mail_getter_params)

    respond_to do |format|
      if @mail_getter.save
        format.html { redirect_to @mail_getter, notice: 'Mail getter was successfully created.' }
        format.json { render :show, status: :created, location: @mail_getter }
      else
        format.html { render :new }
        format.json { render json: @mail_getter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_getters/1
  # PATCH/PUT /mail_getters/1.json
  def update
    respond_to do |format|
      if @mail_getter.update(mail_getter_params)
        format.html { redirect_to @mail_getter, notice: 'Mail getter was successfully updated.' }
        format.json { render :show, status: :ok, location: @mail_getter }
      else
        format.html { render :edit }
        format.json { render json: @mail_getter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_getters/1
  # DELETE /mail_getters/1.json
  def destroy
    @mail_getter.destroy
    respond_to do |format|
      format.html { redirect_to mail_getters_url, notice: 'Mail getter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_getter
      @mail_getter = MailGetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_getter_params
      params.require(:mail_getter).permit(:method, :address, :port, :user_name, :password, :enable_ssl, :user_id)
    end
end

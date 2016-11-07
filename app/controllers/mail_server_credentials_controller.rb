class MailServerCredentialsController < ApplicationController
  before_action :set_mail_server_credential, only: [:show, :edit, :update, :destroy]

  # GET /mail_server_credentials
  # GET /mail_server_credentials.json
  def index
    @mail_server_credentials = MailServerCredential.all
  end

  # GET /mail_server_credentials/1
  # GET /mail_server_credentials/1.json
  def show
  end

  # GET /mail_server_credentials/new
  def new
    @mail_server_credential = MailServerCredential.new
  end

  # GET /mail_server_credentials/1/edit
  def edit
  end

  # POST /mail_server_credentials
  # POST /mail_server_credentials.json
  def create
    @mail_server_credential = MailServerCredential.new(mail_server_credential_params)

    respond_to do |format|
      if @mail_server_credential.save
        format.html { redirect_to @mail_server_credential, notice: 'Mail server credential was successfully created.' }
        format.json { render :show, status: :created, location: @mail_server_credential }
      else
        format.html { render :new }
        format.json { render json: @mail_server_credential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_server_credentials/1
  # PATCH/PUT /mail_server_credentials/1.json
  def update
    respond_to do |format|
      if @mail_server_credential.update(mail_server_credential_params)
        format.html { redirect_to @mail_server_credential, notice: 'Mail server credential was successfully updated.' }
        format.json { render :show, status: :ok, location: @mail_server_credential }
      else
        format.html { render :edit }
        format.json { render json: @mail_server_credential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_server_credentials/1
  # DELETE /mail_server_credentials/1.json
  def destroy
    @mail_server_credential.destroy
    respond_to do |format|
      format.html { redirect_to mail_server_credentials_url, notice: 'Mail server credential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_server_credential
      @mail_server_credential = MailServerCredential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_server_credential_params
      params.require(:mail_server_credential).permit(:user_id, :address, :port, :user_name, :password, :authentication)
    end
end

class HomeController < ApplicationController
  before_action :require_login

  def index

  end

  def new
    @template = BasicTemplate.new
  end

  def create
    @template = BasicTemplate.new(permit_params)
    @template.user = current_user
    if(params[:sample])
      ComposeMailer.sample(@template).deliver
    else
      # ComposeMailer.compose(@template).deliver
    end
  end

  private
    def permit_params
      params.permit(:subject, :message, :parse_message, :to)
    end
end

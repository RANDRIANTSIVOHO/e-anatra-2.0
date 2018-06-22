class NewsletterController < ApplicationController
  before_action :get_id, only: [:show, :update, :edit, :destroy]

  def index
      @newsletters = Newsletter.all
  end
  
  def new
  end
  
  def create
      @newsletter = Newsletter.create(newsletter_params)
  end
  
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:email)
  end

  def get_id
    @newsletter = Newsletter.find(params:[:id])
  end
end
  
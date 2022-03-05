class ProspectsController < ApplicationController
  def index
    @prospects = Prospect.all
    @prospect = Prospect.where(status_id: 1).size
    @interested = Prospect.where(status_id: 2).size
    @client = Prospect.where(status_id: 3).size

  end

  def show
    @prospect = Prospect.find(params[:id])
    @comments = @prospect.comments
    @comment = Comment.new
  end

  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(prospects_params)
    @user = current_user
    @prospect.user_id = @user.id
    if @prospect.save
      redirect_to prospect_path(@prospect)
    else
      render :new
    end
  end

  def edit
    @prospect = Prospect.find(params[:id])
  end

  def update
    @prospect = Prospect.find(params[:id])

    if @prospect.update(prospects_params)
      redirect_to prospect_path(@prospect)
    else
      render :edit
    end
  end

  private 
  def prospects_params
    params.require(:prospect).permit(:name, :lastname, :address, :cellphone, :email, :status_id, :photo)
  end
end

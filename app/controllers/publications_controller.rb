class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def new
    @publication = Publication.new
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def create
    @publication = Publication.new(publications_params)
    @publication.user_id = current_user.id
    if @publication.save
      redirect_to root_path
    else
      render :new
    end
  end
  def edit
    @publication = Publication.find(params[:id])
    render :edit
  end
  def update
    @publication = Publication.find(params[:id])
    @publication.update(publications_params)
    redirect_to root_path
  end

  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy
    redirect_to root_path
  end
  private

  def publications_params
    params.require(:publication).permit(:club_name, :club_address, :sport_name)
  end
end

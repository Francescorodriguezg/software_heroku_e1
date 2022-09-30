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

  private

  def publications_params
    params.require(:publication).permit(:club_name, :club_address, :sport_name)
  end
end

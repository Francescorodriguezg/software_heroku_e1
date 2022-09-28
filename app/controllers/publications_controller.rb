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
      # Asignamoms moderador a todos
      @user_moderator_id = rand(User.where(moderator: true).all.count)
      @user_moderator_id = 2
      #@user = User.where(admin: true).offset(@user_moderator_id - 1).first
      User.where(moderator: true).all(1)
      @publication.moderator_id = @user_moderator_id
      #user1, user2, user3, user4, user5
      #user1.admin
      #user2.moderator
      #user3.user
      #user4.user
      #user5.moderator
      # def create
      # admin(params(user_id, cancha, direccion...))
      # save @pubalication.moderator_id = 
      @publication.user = User.first
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

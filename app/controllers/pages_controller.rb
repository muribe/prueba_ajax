class PagesController < ApplicationController
  def index
    @enterprise = Enterprise.all
  end

  def detail 
    @enterprise = Enterprise.find(params[:id])
    @reclamos = @enterprise.complaints
    if params[:search].present?
        @reclamos = @enterprise.complaints.joins(:user).where("users.email like ?", "%#{params[:search]}%")
    end

  end

  def complaint
    p params
      Complaint.create(content: params[:complaint], user_id:current_user.id,enterprise_id: params[:id])
      @enterprise = Enterprise.find(params[:id])
      @reclamos = @enterprise.complaints
  end
end

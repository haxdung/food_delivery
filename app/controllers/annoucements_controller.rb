class AnnoucementsController < ApplicationController
  def create
    if params[:picture].nil?
      redirect_to(request.referrer)
    end
    @annoucement = Annoucement.new annoucement_params
    if @annoucement.save
      if params[:pictures]
        params[:pictures][:image].each do |i|
          @annoucement.pictures.create(:image => i)
        end
      end
      flash[:success] = t "views.annoucements.success"
    else
      flash[:danger] = t "views.annoucements.error"
    end
  end

  private
  def annoucement_params
    params.require(:annoucement).permit(:title, pictures_attributes: [:id, :image, :comment_id])
  end
end
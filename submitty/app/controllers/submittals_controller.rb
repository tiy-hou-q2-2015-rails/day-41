class SubmittalsController < ApplicationController
  def index
    @submittals = Submittal.all
  end

  def show
    @submittal = Submittal.find params[:id]
  end

  def new
    @submittal = Submittal.new
  end

  def create
    @submittal = Submittal.new params.require(:submittal).permit(:photo)
    if @submittal.save
      PhotoMailer.submitted(@submittal).deliver
      redirect_to submittal_path(id: @submittal.id), notice: "Created! 👍"
    else
      render :new
    end
  end
end

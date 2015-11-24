class RecomsController < ApplicationController
  before_action :set_recom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recoms = Recom.all
    respond_with(@recoms)
  end

  def show
    respond_with(@recom)
  end

  def new
    @recom = Recom.new
    respond_with(@recom)
  end

  def edit
  end

  def create
    @recom = Recom.new(recom_params)
    @recom.save
    respond_with(@recom)
  end

  def update
    @recom.update(recom_params)
    respond_with(@recom)
  end

  def destroy
    @recom.destroy
    respond_with(@recom)
  end

  private
    def set_recom
      @recom = Recom.find(params[:id])
    end

    def recom_params
      params.require(:recom).permit(:recomendacion_id, :catereco_id)
    end
end

class CaterecosController < ApplicationController
  before_action :set_catereco, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @caterecos = Catereco.all
    respond_with(@caterecos)
  end

  def show
    respond_with(@catereco)
  end

  def new
    @catereco = Catereco.new
    respond_with(@catereco)
  end

  def edit
  end

  def create
    @catereco = Catereco.new(catereco_params)
    @catereco.save
    respond_with(@catereco)
  end

  def update
    @catereco.update(catereco_params)
    respond_with(@catereco)
  end

  def destroy
    @catereco.destroy
    respond_with(@catereco)
  end

  private
    def set_catereco
      @catereco = Catereco.find(params[:id])
    end

    def catereco_params
      params.require(:catereco).permit(:tipo)
    end
end

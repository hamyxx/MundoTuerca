class RecomendacionsController < ApplicationController
  before_action :set_recomendacion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recomendacions = Recomendacion.all
    respond_with(@recomendacions)
  end

  def show
    respond_with(@recomendacion)
  end

  def new
    @recomendacion = Recomendacion.new
    respond_with(@recomendacion)
  end

  def edit
  end

  def create
    @recomendacion = Recomendacion.new(recomendacion_params)
    @recomendacion.save
    respond_with(@recomendacion)
  end

  def update
    @recomendacion.update(recomendacion_params)
    respond_with(@recomendacion)
  end

  def destroy
    @recomendacion.destroy
    respond_with(@recomendacion)
  end

  private
    def set_recomendacion
      @recomendacion = Recomendacion.find(params[:id])
    end

    def recomendacion_params
      params.require(:recomendacion).permit(:tipo, :taller, :direccion, :comuna, :ciudad, :comentario, :calificacion, :usuario_id)
    end
end

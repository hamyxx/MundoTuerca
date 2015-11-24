class Recomendacion < ActiveRecord::Base
  belongs_to :usuario
  has_many :recom
  has_many :catereco, :through => :recom
  validates :taller, presence: { message: "Campo Obligatorio"}
  validates :taller, length:{
    minimum: 4,
    too_short: "Minimo %{count}caracteres"
  }
  validates :direccion, presence: { message: "Campo Obligatorio"}
  validates :direccion, length:{
    minimum: 4,
    too_short: "Minimo %{count}caracteres"
  }
  validates :comuna, presence: { message: "Campo Obligatorio"}
  validates :comuna, length:{
    minimum: 4,
    too_short: "Minimo %{count}caracteres"
  }
  validates :ciudad, presence: { message: "Campo Obligatorio"}
  validates :ciudad, length:{
    minimum: 4,
    too_short: "Minimo %{count}caracteres"
  }
  validates :comentario, presence: { message: "Campo Obligatorio"}
  validates :comentario, length:{
    minimum: 5,
    too_short: "Minimo %{count}caracteres"
  }
  validates :calificacion, presence: { message: "Campo Obligatorio"}
  validates :calificacion, length:{
    minimum: 4,
    too_short: "Minimo %{count}caracteres"
  }


  end

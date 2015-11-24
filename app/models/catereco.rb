class Catereco < ActiveRecord::Base
  has_many :recom
  has_many :recomendacion, :through => :recom
  validates :tipo, presence: { message: "Campo Obligatorio"}
  
end

class CreateRecomendacions < ActiveRecord::Migration
  def change
    create_table :recomendacions do |t|
      t.string :tipo
      t.string :taller
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.text :comentario
      t.string :calificacion
      t.references :usuario, index: true

      t.timestamps
    end
  end
end

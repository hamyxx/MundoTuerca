class CreateRecoms < ActiveRecord::Migration
  def change
    create_table :recoms do |t|
      t.references :recomendacion, index: true
      t.references :catereco, index: true

      t.timestamps
    end
  end
end

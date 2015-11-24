class CreateCaterecos < ActiveRecord::Migration
  def change
    create_table :caterecos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end

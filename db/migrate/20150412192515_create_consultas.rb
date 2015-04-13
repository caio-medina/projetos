class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.string :data
      t.string :disponivel

      t.timestamps null: false
    end
  end
end

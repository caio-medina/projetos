class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :doenca

      t.timestamps null: false
    end
  end
end

class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :fecha_nacimiento
      t.integer :telefono

      t.timestamps
    end
  end
end

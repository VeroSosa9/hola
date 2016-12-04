class AddTypeComentToComent < ActiveRecord::Migration[5.0]
  def change
    add_column :coments, :type_coment, :integer
  end
end

class AddNotNullToDepartamento < ActiveRecord::Migration
  def up
    change_column :departamentos, :nome, :string, :null => false
  end
  def downra
    change_column :departamentos, :nome, :string, :null => false
  end
end

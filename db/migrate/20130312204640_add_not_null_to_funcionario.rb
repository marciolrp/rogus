class AddNotNullToFuncionario < ActiveRecord::Migration
  def change
    change_column :funcionarios, :nome, :string, :null => false
    change_column :funcionarios, :contratacao, :date, :null => false
    change_column :funcionarios, :departamento_id, :integer, :null => false
    change_column :funcionarios, :ativo, :boolean, :null => false, :default => false
  end
end

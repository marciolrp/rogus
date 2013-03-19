class Funcionario < ActiveRecord::Base
  attr_accessible :ativo, :contratacao, :departamento_id, :nome
  
  belongs_to :departamento
  
  validates :nome, :presence => { :message => "Informe o nome."}
  validates :departamento_id, :presence => { :message => "Informe o departamento."}
  validates :contratacao, :presence => { :message => "Informe a data de contratacao."}
  validates :ativo, :inclusion => {:in => [true, false], :message => "Status do funcionario invalido."} 
  
end

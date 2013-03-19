# encoding: UTF-8
class DepartamentoMailer < ActionMailer::Base
  default from: "'Relatório de Departamentos - Rogus' <marciolrp@gmail.com>"
  
  def enviar_relatorio(email)
    @departamentos = Departamento.includes(:funcionarios)
    
    mail(:to => email,
    :subject => "Relatório de Departamentos e Funcionários")
  end  
end

class Medico < ActiveRecord::Base

  validates_presence_of :nome, message: "O campo nome deve ser preenchido" 
  validates_presence_of :endereco, message: "O campo endereço deve ser preenchido" 
  validates_presence_of :telefone, message: "O campo telefone deve ser preenchido"
  validates_presence_of :formacao, message: "O campo formacao deve ser preenchido" 
  validates_uniqueness_of :nome, message: "Nome ja cadastrado"
	has_many :consultas
end

# coding: utf-8
require 'rails_helper'
feature 'gerenciar Paciente' do
scenario 'incluir Paciente' do # , :js => true do
visit new_paciente_path
preencher_e_verificar_paciente
end
scenario 'alterar Paciente' do #, :js => true do
paciente = FactoryGirl.create(:paciente)
visit edit_paciente_path(paciente)
preencher_e_verificar_paciente
end
scenario 'excluir paciente' do #, :javascript => true do
paciente = FactoryGirl.create(:paciente)
visit pacientes_path
click_link 'Excluir'
end
def preencher_e_verificar_paciente
fill_in 'Nome', :with => "Algusto"
fill_in 'Endereço', :with => "Rua YYY"
fill_in 'Telefone', :with => "8888"
fill_in 'Doenca', :with => "Gripe"
click_button 'Salvar'

    expect(page).to have_content 'Nome: Algusto'
    expect(page).to have_content 'Endereço: Rua YYY'
    expect(page).to have_content 'Telefone: 8888'
    expect(page).to have_content 'Doenca: Gripe'

	end
end
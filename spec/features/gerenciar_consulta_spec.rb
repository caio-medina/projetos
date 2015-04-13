# coding: utf-8
require 'rails_helper'

feature 'gerenciar Consulta' do

  scenario 'incluir Consulta' do # , :js => true do
    visit new_consulta_path
    preencher_e_verificar_consulta
  end

  scenario 'alterar Consulta' do #, :js => true do
    consulta = FactoryGirl.create(:consulta)
    visit edit_consulta_path(consulta)
    preencher_e_verificar_consulta
  end

  scenario 'excluir consulta' do #, :javascript => true do
    consulta = FactoryGirl.create(:consulta)
    visit consultas_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_consulta
    fill_in 'Data', :with => "12/12/12"
    fill_in 'Disponivel', :with => "Sim"

    click_button 'Salvar'

    expect(page).to have_content 'Data: 12/12/12'
    expect(page).to have_content 'Disponivel: Sim'

  end

end
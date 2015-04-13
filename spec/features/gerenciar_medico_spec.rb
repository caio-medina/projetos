# coding: utf-8
require 'rails_helper'

feature 'gerenciar Medico' do

  scenario 'incluir Medico' do # , :js => true do
    visit new_medico_path
    preencher_e_verificar_medico
  end

  scenario 'alterar Medico' do #, :js => true do
    medico = FactoryGirl.create(:medico)
    visit edit_medico_path(medico)
    preencher_e_verificar_medico
  end

  scenario 'excluir medico' do #, :javascript => true do
    medico = FactoryGirl.create(:medico)
    visit medicos_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_medico
    fill_in 'Nome', :with => "Henrique"
    fill_in 'Endereço', :with => "Rua ZZZ"
    fill_in 'Telefone', :with => "77777"
    fill_in 'Formacao', :with => "Neurologista"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Henrique'
    expect(page).to have_content 'Endereço: Rua ZZZ'
    expect(page).to have_content 'Telefone: 77777'
    expect(page).to have_content 'Formacao: Neurologista'

  end

end
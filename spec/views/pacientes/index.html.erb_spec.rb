require 'rails_helper'

RSpec.describe "pacientes/index", :type => :view do
  before(:each) do
    assign(:pacientes, [
      Paciente.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :doenca => "Doenca"
      ),
      Paciente.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :doenca => "Doenca"
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Doenca".to_s, :count => 2
  end
end

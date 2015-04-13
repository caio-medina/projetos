require 'rails_helper'

RSpec.describe "pacientes/show", :type => :view do
  before(:each) do
    @paciente = assign(:paciente, Paciente.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :doenca => "Doenca"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Doenca/)
  end
end

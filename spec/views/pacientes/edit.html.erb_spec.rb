require 'rails_helper'

RSpec.describe "pacientes/edit", :type => :view do
  before(:each) do
    @paciente = assign(:paciente, Paciente.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :doenca => "MyString"
    ))
  end

  it "renders the edit paciente form" do
    render

    assert_select "form[action=?][method=?]", paciente_path(@paciente), "post" do

      assert_select "input#paciente_nome[name=?]", "paciente[nome]"

      assert_select "input#paciente_endereco[name=?]", "paciente[endereco]"

      assert_select "input#paciente_telefone[name=?]", "paciente[telefone]"

      assert_select "input#paciente_doenca[name=?]", "paciente[doenca]"
    end
  end
end

require 'rails_helper'

RSpec.describe "pacientes/new", :type => :view do
  before(:each) do
    assign(:paciente, Paciente.new(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :doenca => "MyString"
    ))
  end

  it "renders new paciente form" do
    render

    assert_select "form[action=?][method=?]", pacientes_path, "post" do

      assert_select "input#paciente_nome[name=?]", "paciente[nome]"

      assert_select "input#paciente_endereco[name=?]", "paciente[endereco]"

      assert_select "input#paciente_telefone[name=?]", "paciente[telefone]"

      assert_select "input#paciente_doenca[name=?]", "paciente[doenca]"
    end
  end
end

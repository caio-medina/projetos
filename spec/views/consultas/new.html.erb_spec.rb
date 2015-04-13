require 'rails_helper'

RSpec.describe "consultas/new", :type => :view do
  before(:each) do
    assign(:consulta, Consulta.new(
      :data => "MyString",
      :disponivel => "MyString"
    ))
  end

  it "renders new consulta form" do
    render

    assert_select "form[action=?][method=?]", consultas_path, "post" do

      assert_select "input#consulta_data[name=?]", "consulta[data]"

      assert_select "input#consulta_disponivel[name=?]", "consulta[disponivel]"
    end
  end
end

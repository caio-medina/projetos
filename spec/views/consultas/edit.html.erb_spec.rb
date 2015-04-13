require 'rails_helper'

RSpec.describe "consultas/edit", :type => :view do
  before(:each) do
    @consulta = assign(:consulta, Consulta.create!(
      :data => "MyString",
      :disponivel => "MyString"
    ))
  end

  it "renders the edit consulta form" do
    render

    assert_select "form[action=?][method=?]", consulta_path(@consulta), "post" do

      assert_select "input#consulta_data[name=?]", "consulta[data]"

      assert_select "input#consulta_disponivel[name=?]", "consulta[disponivel]"
    end
  end
end

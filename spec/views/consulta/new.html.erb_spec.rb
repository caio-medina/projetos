require 'rails_helper'

RSpec.describe "consulta/new", :type => :view do
  before(:each) do
    assign(:consultum, Consultum.new(
      :data => "MyString",
      :disponivel => "MyString"
    ))
  end

  it "renders new consultum form" do
    render

    assert_select "form[action=?][method=?]", consulta_path, "post" do

      assert_select "input#consultum_data[name=?]", "consultum[data]"

      assert_select "input#consultum_disponivel[name=?]", "consultum[disponivel]"
    end
  end
end

require 'rails_helper'

RSpec.describe "consulta/edit", :type => :view do
  before(:each) do
    @consultum = assign(:consultum, Consultum.create!(
      :data => "MyString",
      :disponivel => "MyString"
    ))
  end

  it "renders the edit consultum form" do
    render

    assert_select "form[action=?][method=?]", consultum_path(@consultum), "post" do

      assert_select "input#consultum_data[name=?]", "consultum[data]"

      assert_select "input#consultum_disponivel[name=?]", "consultum[disponivel]"
    end
  end
end

require 'rails_helper'

RSpec.describe "consulta/index", :type => :view do
  before(:each) do
    assign(:consulta, [
      Consultum.create!(
        :data => "Data",
        :disponivel => "Disponivel"
      ),
      Consultum.create!(
        :data => "Data",
        :disponivel => "Disponivel"
      )
    ])
  end

  it "renders a list of consulta" do
    render
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Disponivel".to_s, :count => 2
  end
end

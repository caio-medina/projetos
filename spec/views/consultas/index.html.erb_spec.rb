require 'rails_helper'

RSpec.describe "consultas/index", :type => :view do
  before(:each) do
    assign(:consultas, [
      Consulta.create!(
        :data => "Data",
        :disponivel => "Disponivel"
      ),
      Consulta.create!(
        :data => "Data",
        :disponivel => "Disponivel"
      )
    ])
  end

  it "renders a list of consultas" do
    render
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Disponivel".to_s, :count => 2
  end
end

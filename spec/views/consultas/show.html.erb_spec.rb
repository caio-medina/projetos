require 'rails_helper'

RSpec.describe "consultas/show", :type => :view do
  before(:each) do
    @consulta = assign(:consulta, Consulta.create!(
      :data => "Data",
      :disponivel => "Disponivel"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Data/)
    expect(rendered).to match(/Disponivel/)
  end
end

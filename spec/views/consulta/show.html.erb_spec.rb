require 'rails_helper'

RSpec.describe "consulta/show", :type => :view do
  before(:each) do
    @consultum = assign(:consultum, Consultum.create!(
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

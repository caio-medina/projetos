require 'rails_helper'

RSpec.describe "medicos/index", :type => :view do
  before(:each) do
    assign(:medicos, [
      Medico.create!(),
      Medico.create!()
    ])
  end

  it "renders a list of medicos" do
    render
  end
end

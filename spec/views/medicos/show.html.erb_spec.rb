require 'rails_helper'

RSpec.describe "medicos/show", :type => :view do
  before(:each) do
    @medico = assign(:medico, Medico.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

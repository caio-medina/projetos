require 'rails_helper'

RSpec.describe "medicos/edit", :type => :view do
  before(:each) do
    @medico = assign(:medico, Medico.create!())
  end

  it "renders the edit medico form" do
    render

    assert_select "form[action=?][method=?]", medico_path(@medico), "post" do
    end
  end
end

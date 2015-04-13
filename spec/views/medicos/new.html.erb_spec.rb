require 'rails_helper'

RSpec.describe "medicos/new", :type => :view do
  before(:each) do
    assign(:medico, Medico.new())
  end

  it "renders new medico form" do
    render

    assert_select "form[action=?][method=?]", medicos_path, "post" do
    end
  end
end
